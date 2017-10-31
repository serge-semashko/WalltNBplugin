/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dubna.walt.syntaxhighlighter.highlight;

/**
 *
 * @author Semashko
 */
import java.awt.Color;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JEditorPane;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import javax.swing.text.JTextComponent;
import javax.swing.text.StyleConstants;
import org.netbeans.api.editor.mimelookup.MimeLookup;
import org.netbeans.api.editor.mimelookup.MimePath;
import org.netbeans.api.editor.settings.AttributesUtilities;
import org.netbeans.api.editor.settings.FontColorNames;
import org.netbeans.api.editor.settings.FontColorSettings;
import org.netbeans.modules.editor.NbEditorUtilities;
import org.netbeans.spi.editor.highlighting.support.OffsetsBag;
import org.openide.cookies.EditorCookie;
import org.openide.loaders.DataObject;
import org.openide.util.Exceptions;
import org.openide.util.RequestProcessor;
import dubna.walt.syntaxhighlighter.CountriesCompletionItem;
import static dubna.walt.syntaxhighlighter.CountriesCompletionProvider.log2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

public class MarkHTMLOccurrencesHighlighter implements CaretListener {

    private static AttributeSet defaultColors
            = AttributesUtilities.createImmutable(StyleConstants.Background,
                    new Color(236, 235, 163));
    private static AttributeSet d1;
    List<String> kwords = Collections.unmodifiableList(new ArrayList<String>() {
        {
            add("$CALL_SERVICE");
            add("$INCLUDE");
            add("$GET_DATA");
        }
    });
    private static AttributeSet keyword_color;
    private static AttributeSet url_color;
    private static AttributeSet string_color;
    private static AttributeSet field_color;
    private static AttributeSet warning_color;
    int startPos, endPos, pos, shift;
    String line;
    private final OffsetsBag bag;

    private JTextComponent comp;
    private final WeakReference<Document> weakDoc;

    private final RequestProcessor rp;
    private final static int REFRESH_DELAY = 100;
    private RequestProcessor.Task lastRefreshTask;

    AttributeSet getFCSColor(FontColorSettings fcs, String cname) {
        if (fcs.getTokenFontColors(cname) != null) {
            System.out.println("#mark# color ok:" + cname);
            return fcs.getTokenFontColors(cname);
        }
        return null;

    }

    public MarkHTMLOccurrencesHighlighter(Document doc) {
        MimePath mimePath = MimePath.parse("text/x-java");
        FontColorSettings fcs = (FontColorSettings) MimeLookup.getLookup(mimePath).lookup(FontColorSettings.class);
        System.out.println("#mark# MarkHTMLOccurrencesHighlighter fcs=" + fcs.toString());

        if (fcs.getTokenFontColors("error") != null) {
            System.out.println("#mark# tok keyword!!");
            defaultColors = fcs.getTokenFontColors("error");
        }
        keyword_color = getFCSColor(fcs, "keyword");
        warning_color = getFCSColor(fcs, "warning");
        string_color = getFCSColor(fcs, "string");
        field_color = getFCSColor(fcs, "field");
        url_color = getFCSColor(fcs, "url");
        System.out.println("#mark# MarkHTMLOccurrencesHighlighter");
        rp = new RequestProcessor(MarkHTMLOccurrencesHighlighter.class);
        bag = new OffsetsBag(doc);
        weakDoc = new WeakReference<Document>((Document) doc);
        DataObject dobj = NbEditorUtilities.getDataObject(weakDoc.get());
        if (dobj != null) {
            EditorCookie pane = dobj.getLookup().lookup(EditorCookie.class);
            JEditorPane[] panes = pane.getOpenedPanes();
            if (panes != null && panes.length > 0) {
                comp = panes[0];
                comp.addCaretListener(this);
            }
        }
    }

    @Override
    public void caretUpdate(CaretEvent e) {
        System.out.println("#mark# carret Uodate");
        bag.clear();
        setupAutoRefresh();
    }

    public void setupAutoRefresh() {
        System.out.println("#mark# setupAutoRefresh");
        if (lastRefreshTask == null) {
            lastRefreshTask = rp.create(new Runnable() {
                @Override
                public void run() {
                    String txtWord = comp.getText();
                    String[] lines = txtWord.split("\n");
                    log2("lines count " + Integer.toString(lines.length));
                    pos = 0;
                    for (String lline : lines) {
                        line = lline;
                        shift = 0;
                        while ((line.length() > 0) && (line.charAt(0) == ' ')) {
                            line = line.substring(1, line.length());
                            shift++;
                        }
                        line = line.trim();
                        startPos = -1;
                        endPos = -1;
                        checkSection();
                        checkKeywords();
                        pos += line.length() + 1;
                    }

                }

            });
        }
        lastRefreshTask.schedule(REFRESH_DELAY);
    }

    private void checkSection() {
        startPos = line.indexOf('[');
        endPos = line.indexOf(']');
        if ((startPos == 0) && (endPos > 2)) {
            String sectName = line.substring(startPos, endPos) + ']';
            log2(sectName + " " + line);
//                            if (!sectName.equalsIgnoreCase("[end]") && !sectName.equalsIgnoreCase("[comments]") && !sectName.equalsIgnoreCase("[description]")) {
            bag.addHighlight(pos + shift + startPos + 2, pos + shift + endPos + 1, string_color);
//                            }

        }
    }

    private void checkKeywords() {
        int endSect;
        int startSect;
        String vrb = line.split(" ")[0];
        int curpos = line.indexOf(vrb) + vrb.length();
        if (!kwords.contains(vrb)) {
            return;
        }
        bag.addHighlight(pos + shift + 1, pos + shift + vrb.length() + 1, keyword_color);
        if (vrb.equals("$CALL)SERVICE")) {
            while ((line.charAt(curpos) == ' ') && curpos < line.length()) {
                curpos++;
            }
        }
        System.out.println("#HYPER# verb ok " + vrb + " " + line.indexOf("[") + " " + line.indexOf("]"));
        if (curpos >= line.length()) {
            return;
        }
        if (vrb.equals("$CALL_SERVICE")) {
            startSect = curpos;
            if (line.indexOf("??") > -1) {
                String parm = line.substring(startSect, line.indexOf("??") - 1);
                endSect = parm.trim().length() + startSect - 1;
            } else {
                String parm = line.substring(startSect, line.length());
                endSect = parm.trim().length() + startSect - 1;
            }
            if (startSect < endSect) {

            }

        }

        //process $INCLUDE, $CALL_DATA
        if (vrb.equals("$GET_DATA") || vrb.equals("$INCLUDE")) {
            if ((line.indexOf("[") > -1) & (line.indexOf("]") > -1) & (line.indexOf("]") > line.indexOf("["))) {
                endSect = line.indexOf("]");
                startSect = curpos;
            }
        }
        ColorCondition();
        return;

    }

    public OffsetsBag getHighlightsBag() {
        System.out.println("#mark# getHighlightsBag");
        return bag;
    }

    private void ColorCondition() {
        int condpos = line.indexOf("??");
        if (condpos > -1) {
            bag.addHighlight(pos + shift + condpos+1, pos + shift + line.length() + 1, field_color);
        };

    }

}
