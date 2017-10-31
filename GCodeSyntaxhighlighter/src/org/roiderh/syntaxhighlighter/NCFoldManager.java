/*
 * Copyright (C) 2016 by Herbert Roider <herbert.roider@utanet.at>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.roiderh.syntaxhighlighter;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.event.DocumentEvent;
import javax.swing.text.Document;
import org.netbeans.api.editor.fold.Fold;
import org.netbeans.api.editor.fold.FoldHierarchy;
import org.netbeans.api.editor.fold.FoldTemplate;
import org.netbeans.api.editor.fold.FoldType;
import org.netbeans.spi.editor.fold.FoldHierarchyTransaction;
import org.netbeans.spi.editor.fold.FoldManager;
import org.netbeans.spi.editor.fold.FoldOperation;

/**
 *
 * @author Herbert Roider <herbert@roider.at>
 */
public class NCFoldManager implements FoldManager, Runnable {

    private FoldHierarchyTransaction transaction;
    private FoldOperation operation;
    public static final FoldType G_CODE_FOLD_TYPE = FoldType.create("UUU", "g-code Block", null);
    private int change_counter = 0;

    @Override
    public void init(FoldOperation operation) {
        this.operation = operation;
    }

    @Override
    public void initFolds(FoldHierarchyTransaction fht) {
        change_counter = 0;
        this.update_folds_request(fht);
        
    }

    @Override
    public void insertUpdate(DocumentEvent de, FoldHierarchyTransaction fht
    ) {
        change_counter++;
        if(change_counter < 10){
            return;
        }
                
        Iterator<Fold> iter = operation.foldIterator();
        int offset = de.getOffset();
        boolean update = true;
        while (iter.hasNext()) {
            Fold f = iter.next();
            int start = f.getStartOffset();
            int end = f.getEndOffset();
            if (offset > start && offset < end) {
                update = false;
                break;
            }
        }
        if (update) {
            this.update_folds_request(fht);
        }
    }

    @Override
    public void removeUpdate(DocumentEvent de, FoldHierarchyTransaction fht
    ) {
        //this.update_folds_request(fht);
    }

    @Override
    public void changedUpdate(DocumentEvent de, FoldHierarchyTransaction fht
    ) {
        //this.update_folds_request(fht);

    }

    @Override
    public void removeEmptyNotify(Fold fold) {
    }

    @Override
    public void removeDamagedNotify(Fold fold) {
    }

    @Override
    public void expandNotify(Fold fold) {

    }

    @Override
    public void release() {
    }

    @Override
    public void run() {
        update_folds();
    }

    public void update_folds_request(FoldHierarchyTransaction fht) {
        change_counter = 0;
        this.transaction = fht;
        FoldHierarchy hierarchy = operation.getHierarchy();
        Document document = hierarchy.getComponent().getDocument();
        document.render(this);

    }

    public void update_folds() {

        Iterator<Fold> iter = operation.foldIterator();
        ArrayList<Fold> folds = new ArrayList<>();
        while (iter.hasNext()) {
            folds.add(iter.next());
        }
        for (Fold f : folds) {
            operation.removeFromHierarchy(f, transaction);
        }

        FoldHierarchy hierarchy = operation.getHierarchy();
        Document document = hierarchy.getComponent().getDocument();

        FoldType type = null;
        int start = 0;
        int end = 0;
        int offset = 0;
        boolean in_code = false;
        ArrayList<Codeline> lines = new ArrayList<>();
        try {
            String text = document.getText(0, document.getLength());
            InputStream is = new ByteArrayInputStream(text.getBytes());

            BufferedReader br;
            String line;

            br = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            while ((line = br.readLine()) != null) {
                Matcher m = Pattern.compile("(T)([0-9])+").matcher(line);
                int toolchangeLocation = -1;
                if (m.find()) {
                    toolchangeLocation = m.start();
                }
                Codeline l = new Codeline();
                l.begin = offset;
                l.end = offset + line.length();
                l.text = line;
                if (toolchangeLocation >= 0) {
                    l.type = Codeline.Type.TOOLCHANGE;
                    lines.add(l);

                } else if (line.trim().startsWith("%")) {
                    l.type = Codeline.Type.PROGNR;
                    lines.add(l);

                } else if (line.trim().startsWith("(") || line.trim().startsWith(";")) {
                    l.type = Codeline.Type.COMMENT;
                    lines.add(l);

                } else if (line.trim().length() > 0) {
                    l.type = Codeline.Type.CODE;
                    lines.add(l);
                }

                offset += line.length() + 1;

            }
            // create folds on every Toolchange:
            in_code = false;
            for (int i = lines.size() - 1; i >= 0; i--) {
                Codeline l = lines.get(i);
                if (l.type == l.type.CODE) {
                    if (!in_code) {
                        end = l.end;
                        in_code = true;
                    }
                } else if (l.type == l.type.TOOLCHANGE) {
                    if (in_code) {
                        start = l.end;
                        type = G_CODE_FOLD_TYPE;
                        operation.addToHierarchy(type, start, end, false, FoldTemplate.DEFAULT, type.toString(), null, transaction);
                    }
                    in_code = false;
                } else if (l.type == l.type.PROGNR) {
                    in_code = false;
                }

            }
            // create the fold for the codeblock before the first toolchange:
            boolean first_codeblock_ready = false;
            in_code = false;
            for (int i = 0; i < lines.size(); i++) {
                Codeline l = lines.get(i);
                if (i == lines.size() - 1) {
                    if (in_code) {
                        end = l.end;
                        if (first_codeblock_ready == false) {
                            type = G_CODE_FOLD_TYPE;
                            operation.addToHierarchy(type, start, end, false, FoldTemplate.DEFAULT, type.toString(), null, transaction);
                            //first_codeblock_ready = true;

                        }
                    }
                    in_code = false;
                    first_codeblock_ready = false;
                } else if (l.type == l.type.PROGNR) {
                    if (in_code) {
                        //end = l.begin - 1;
                        if (first_codeblock_ready == false) {
                            type = G_CODE_FOLD_TYPE;
                            operation.addToHierarchy(type, start, end, false, FoldTemplate.DEFAULT, type.toString(), null, transaction);
                            //first_codeblock_ready = true;

                        }
                    }
                    in_code = false;
                    first_codeblock_ready = false;
                } else if (l.type == l.type.COMMENT) {
                    if (in_code) {
                        //end = l.begin - 1;
                        if (first_codeblock_ready == false) {
                            type = G_CODE_FOLD_TYPE;
                            operation.addToHierarchy(type, start, end, false, FoldTemplate.DEFAULT, type.toString(), null, transaction);
                            first_codeblock_ready = true;

                        }
                    }
                    in_code = false;

                } else if (l.type == l.type.TOOLCHANGE) {
                    first_codeblock_ready = true;
                    //in_code = false;
                } else if (l.type == l.type.CODE) {
                    if (!in_code) {
                        start = l.begin;
                    }
                    end = l.end;
                    in_code = true;
                }

            }

        } catch (Exception e) {

        }

    }
}
