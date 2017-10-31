package dubna.walt.waltFileType;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Locale;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import javax.swing.text.JTextComponent;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.spi.editor.completion.CompletionProvider;
import org.netbeans.spi.editor.completion.CompletionResultSet;
import org.netbeans.spi.editor.completion.CompletionTask;
import org.netbeans.spi.editor.completion.support.AsyncCompletionQuery;
import org.netbeans.spi.editor.completion.support.AsyncCompletionTask;
import org.openide.util.Exceptions;

@MimeRegistration(mimeType = "text/x-wlt", service = CompletionProvider.class)

public class CountriesCompletionProvider implements CompletionProvider {

    String[] sectWord = {"$INCLUDE", "$GET_DATA"};

    public static void log2(String lstr) {
        try {
            FileWriter file = new FileWriter("f:/home/nb/logccp.txt", true);
            String ll = lstr + "\n";
            file.append(ll);
            file.flush();
            file.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public CompletionTask createTask(int queryType, final JTextComponent jtc) {

        log2("createTask = " + jtc.getText());
//        throw new UnsupportedOperationException("Not supported yet.");
        if (queryType != CompletionProvider.COMPLETION_QUERY_TYPE) {

            return null;
        }

        return new AsyncCompletionTask(new AsyncCompletionQuery() {

            protected void addSections(Document document, CompletionResultSet cRS, int caretOffset) {
                String txtWord, sectName;
                String[] sections = {};
                log2("addsect in");

                try {
                    int startName, endName;
                    txtWord = document.getText(0, document.getLength());
                    String[] lines = txtWord.split("\n");
                    log2("lines count " + Integer.toString(lines.length));
                    for (String line : lines) {
                        line = line.trim();
                        startName = line.indexOf('[');
                        endName = line.indexOf(']');
                        if ((startName == 0) && (endName > 2)) {
                            sectName = line.substring(startName, endName) + ']';
                            log2(sectName + " " + line);
                            if (!sectName.equalsIgnoreCase("[end]")) {
                                cRS.addItem(new CountriesCompletionItem(sectName, caretOffset));
                            }

                        }
                    }
                } catch (BadLocationException ex) {
                    Exceptions.printStackTrace(ex);
                }
            }

            @Override
            protected void query(CompletionResultSet completionResultSet, Document document, int caretOffset) {
//Iterate through the available locales 
//and assign each country display name 
//to a CompletionResultSet:
                Document d1 = jtc.getDocument();
                String dstr1;
                try {
                    dstr1 = jtc.getDocument().getText(0, jtc.getDocument().getLength());
                } catch (BadLocationException ex) {
                    Exceptions.printStackTrace(ex);
                }
                String s1;
                Boolean setok = false;
                try {
                    log2("doc len =" + Integer.toString(jtc.getDocument().getLength()));
                    if (jtc.getDocument().getLength() > 0) {
                        s1 = jtc.getDocument().getText(caretOffset - 1, 1);
                        log2("s1 = " + s1);
                        
                        if (s1.charAt(0) == '$') {
                            setok = true;
                            completionResultSet.addItem(new CountriesCompletionItem("SET_PARAMETERS ", caretOffset));
                            completionResultSet.addItem(new CountriesCompletionItem("INCLUDE ", caretOffset));
                            completionResultSet.addItem(new CountriesCompletionItem("CALL_SERVICE ", caretOffset));
                            completionResultSet.addItem(new CountriesCompletionItem("GET_DATA ", caretOffset));
                        } else {
                            s1 = jtc.getDocument().getText(0, caretOffset + 1);
                            log2(s1);
                            int lpos = caretOffset;
                            log2("lpos=" + Integer.toString(lpos) + " char='" + s1.charAt(lpos) + "'");
                            while ((s1.charAt(lpos) == ' ') && (lpos > 0)) {
                                log2("lpos=" + Integer.toString(lpos) + " cmpchar='" + s1.charAt(lpos) + "'");
                                lpos--;
                            }
                            for (String cmpWord : sectWord) {
                                log2("lpos=" + Integer.toString(lpos) + " cmp=" + cmpWord);
                                String txtWord = jtc.getDocument().getText(lpos - cmpWord.length() - 1, cmpWord.length());
                                log2("'" + cmpWord + "'='" + txtWord + "'");
                                if (cmpWord.equals(txtWord)) {
                                    setok = true;
                                    log2("addsect");
                                    addSections(d1, completionResultSet, caretOffset);
                                }
                            }

                        }

                    }
                } catch (BadLocationException ex) {
                    Exceptions.printStackTrace(ex);
                }
                if (!setok) {
                    completionResultSet.addItem(new CountriesCompletionItem("No", caretOffset));

                }
                completionResultSet.finish();
            }
        }, jtc);
    }

    @Override
    public int getAutoQueryTypes(JTextComponent component, String typedText) {
        log2("getAutoQueryTypes");
        return 0;
    }
}
