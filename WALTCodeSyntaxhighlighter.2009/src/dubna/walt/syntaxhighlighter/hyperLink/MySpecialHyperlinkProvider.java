/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dubna.walt.syntaxhighlighter.hyperLink;

/**
 *
 * @author Semashko
 */
import java.awt.Component;
import java.awt.Cursor;
import java.io.File;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JFrame;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.api.html.lexer.HTMLTokenId;
import org.netbeans.api.lexer.Token;
import org.netbeans.api.lexer.TokenHierarchy;
import org.netbeans.api.lexer.TokenSequence;
import org.netbeans.lib.editor.hyperlink.spi.HyperlinkProvider;
import org.netbeans.spi.editor.completion.CompletionProvider;
import org.openide.DialogDisplayer;
import org.openide.NotifyDescriptor;
import org.openide.awt.StatusDisplayer;
import org.openide.cookies.LineCookie;
import org.openide.cookies.OpenCookie;
import org.openide.filesystems.FileObject;
import org.openide.filesystems.FileUtil;
import org.openide.loaders.DataObject;
import org.openide.loaders.DataObjectNotFoundException;
import org.openide.text.Line;
import org.openide.util.Exceptions;
import org.openide.windows.WindowManager;

@MimeRegistration(mimeType = "text/x-walt", service = HyperlinkProvider.class)
public class MySpecialHyperlinkProvider implements HyperlinkProvider {

    public static final Pattern MY_SPECIAL_PATTERN
            = Pattern.compile(".*\\[myspecial:(.*?):myspecial\\].*");

    String line;
    private String target, verb, sectname, condition, sectfile;
    private int targetStart;
    private int targetEnd;
    private int startOffset, endOffset, curpos, startSect, endSect;
    private Document doc;
    ArrayList<String> words = new ArrayList<String>();

    @Override
    public boolean isHyperlinkPoint(Document dcmnt, int i) {
        doc = dcmnt;
        curpos = i;
        startOffset = 0;
        endOffset = 0;
        checkKeywords();
        if (endOffset != 0) {
//            System.out.println("#HYPER# TRUE" + startOffset + " len=" + endOffset);
            return true;
        } else {
//            System.out.println("#HYPER# FALSE" + startOffset + " len=" + endOffset);
            return false;

        }
    }

    @Override
    @SuppressWarnings("empty-statement")
    public int[] getHyperlinkSpan(Document dcmnt, int i) {
//        System.out.println("#HYPER# SPAN" + startOffset + " len=" + (endOffset - startOffset));
        return new int[]{startOffset, endOffset};
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

//    @Override
//    public void performClickAction(Document dcmnt, int i) {
//        try {
//            JFrame mainFrame
//                    = (JFrame) WindowManager.getDefault().getMainWindow();
//            Component glassPane = mainFrame.getGlassPane();
//            
//            boolean isWaiting = glassPane.isVisible();
//            if (!isWaiting) {
//                glassPane.setVisible(true);
//                glassPane.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
//            } else {
//                glassPane.setVisible(false);
//
//                glassPane.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
//            }
//        } catch (Exception e) {
//            // probably not worth handling 
//        }
//    }
    @Override
    public void performClickAction(Document doc, int offset) {
        try {
            String text = doc.getText(startOffset, endOffset - startOffset);
            String sectName = "";
            String fileName = "";
            if (text.indexOf("[") > -1) {
                fileName = text.substring(0, text.indexOf("[")).trim();
                if (checkSection(text)) {
                    int startSect = text.indexOf("[");
                    int endSect = text.indexOf("]");
                    sectName = text.substring(startSect, endSect);
                }
                System.out.println(" ###HYPER sect=" + text + " s=" + startSect + " e=" + endSect);
            } else {
//                text = text.substring(0, text.indexOf("["));
            }
            FileObject fo = getFileObject(doc);
            String pathToFileToOpen = fo.getPath();
            text = fileName;
            if (!text.equals("")) {
                text = "/" + text + ".cfg";
                pathToFileToOpen = fo.getParent().getPath() + text;
            }
//            String text1 = "/" + text;
            File fileToOpen = FileUtil.normalizeFile(new File(pathToFileToOpen));
            if (fileToOpen.exists()) {
                try {
                    FileObject foToOpen = FileUtil.toFileObject(fileToOpen);
                    if (sectName.equals("")) {
                        DataObject.find(foToOpen).getLookup().lookup(OpenCookie.class).open();
                    } else {
                        LineCookie lc = DataObject.find(foToOpen).getLookup().lookup(LineCookie.class);
                        int lnum = lc.getLineSet().getLines().indexOf(sectName);
                        if (lnum < 0) {
                            lnum = 0;
                        }
                        Line line = lc.getLineSet().getOriginal(lnum);
                        line.show(Line.ShowOpenType.OPEN, Line.ShowVisibilityType.FRONT);
                    }

                } catch (DataObjectNotFoundException ex) {
                    Exceptions.printStackTrace(ex);
                }
            } else {
                StatusDisplayer.getDefault().setStatusText(fileToOpen.getName() + " doesn't exist!");
//                pathToFileToOpen = fo.getParent().getPath() + text1;
//                fileToOpen = FileUtil.normalizeFile(new File(pathToFileToOpen));
//                if (fileToOpen.exists()) {
//                    try {
//                        FileObject foToOpen = FileUtil.toFileObject(fileToOpen);
//                        DataObject.find(foToOpen).getLookup().lookup(OpenCookie.class).open();
//                    } catch (DataObjectNotFoundException ex) {
//                        Exceptions.printStackTrace(ex);
//                    }
//                } else {
//
//                    StatusDisplayer.getDefault().setStatusText(fileToOpen.getName() + " doesn't exist!");
//                }

            }
//            fo = getFileObject(doc);
//            pathToFileToOpen = fo.getParent().getPath() + text1;
//            fileToOpen = FileUtil.normalizeFile(new File(pathToFileToOpen));
//            pathToFileToOpen = fo.getParent().getPath() + text1;
//            fileToOpen = FileUtil.normalizeFile(new File(pathToFileToOpen1));
//            if (fileToOpen.exists()) {
//                try {
//                    FileObject foToOpen = FileUtil.toFileObject(fileToOpen);
//                    DataObject.find(foToOpen).getLookup().lookup(OpenCookie.class).open();
//                } catch (DataObjectNotFoundException ex) {
//                    Exceptions.printStackTrace(ex);
//                }
//            } else {
//                StatusDisplayer.getDefault().setStatusText(fileToOpen.getName() + " doesn't exist!");
//            }
        } catch (BadLocationException ex) {
            Exceptions.printStackTrace(ex);
        }
    }

    private static FileObject getFileObject(Document doc) {
        DataObject od = (DataObject) doc.getProperty(Document.StreamDescriptionProperty);
        return od != null ? od.getPrimaryFile() : null;
    }

    String showChar() {
        String res;
        res = "";
        for (int i = 0; i < 3; i++) {
            try {
                if ((curpos - 1 + i) < 0) {
                    continue;
                }
                String ch;
                if ((int) doc.getText(curpos - 1 + i, 1).charAt(0) < 32) {
                    ch = Integer.toHexString((int) doc.getText(curpos - 1 + i, 1).charAt(0));
                } else {
                    ch = doc.getText(curpos - 1 + i, 1);
                }

                res += " '" + ch + "' = " + String.valueOf((int) doc.getText(curpos - 1 + i, 1).charAt(0) + " ");
            } catch (BadLocationException ex) {
                Exceptions.printStackTrace(ex);
            }
        }
        return res;
    }

    private void GetTrimLine() {
        words.clear();
        startOffset = curpos;
        try {
            if ((curpos >= doc.getLength()) || (doc.getText(curpos, 1).charAt(0) == '\n')) {
                endOffset = 0;
                return;
            }
        } catch (BadLocationException ex) {
            Exceptions.printStackTrace(ex);
            endOffset = 0;
            return;
        }
//        System.out.println(" #START GET TRIM #pos=" +curpos+ " doclen="+doc.getLength());
        try {
//            System.out.println(curpos + " #HYPER src#=" + showChar());
            while ((curpos > 0) && (doc.getText(curpos, 1).charAt(0) != '\n')) {
//                System.out.println(curpos + " #HYPER back#=" + doc.getText(curpos, 1).charAt(0) + " = " + String.valueOf((int) doc.getText(curpos, 1).charAt(0)));
                curpos--;
            }
            if (startOffset != curpos) {
                startOffset = curpos;
                if (doc.getText(curpos, 1).charAt(0) == '\n') {
                    curpos++;
                }
            }
            while ((curpos < doc.getLength()) && (doc.getText(curpos, 1).charAt(0) != '\n')) {
//                System.out.println(curpos + " #HYPER forward#=" + doc.getText(curpos, 1).charAt(0) + " = " + String.valueOf((int) doc.getText(curpos, 1).charAt(0)));
                curpos++;
            }
            if (doc.getText(curpos, 1).charAt(0) == '\n') {
                curpos--;
            }
            endOffset = curpos;

            if ((endOffset == 0) || (startOffset == endOffset)) {
                endOffset = 0;
                return;
            }
            line = doc.getText(startOffset, endOffset - startOffset + 1);

//            System.out.println("#HYPER# start=" + startOffset + " len=" + endOffset + " line='" + line + "'");
            if ((line.trim().length() == 0) || (line.trim().charAt(0) != '$')) {
                endOffset = 0;
                line = "";
                return;
            }
            int lineStart = startOffset;
            curpos = 0;
            startSect = 0;
            endSect = 0;
            CheckVerb("$INCLUDE");
            CheckVerb("$GET_DATA");
            CheckVerb("$CALL_SERVICE");
            if (endSect > 0) {
                startOffset = lineStart + startSect;
                endOffset = lineStart + endSect + 1;
                System.out.println("#HYPER# LINK=" + startOffset + " len=" + endOffset + " line='" + line + "'");

                return;
            }

        } catch (BadLocationException ex) {
            Exceptions.printStackTrace(ex);

        }
        endOffset = 0;
        line = "";
    }

    private void checkKeywords() {
        GetTrimLine();
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private int CheckVerb(String vrb) {
        if (line.indexOf(vrb) < 0) {
            return 0;
        }
        curpos = line.indexOf(vrb) + vrb.length();
        if (curpos > line.length()) {
            curpos = 0;
            return 0;
        }
        while ((line.charAt(curpos) == ' ') && curpos < line.length()) {
            curpos++;
        }
//        System.out.println("#HYPER# verb ok " + vrb + " " + line.indexOf("[") + " " + line.indexOf("]"));
        if (curpos >= line.length()) {
            return 0;
        }
        if (vrb.equals("$CALL_SERVICE")) {
            startSect = curpos;
            if (line.indexOf("??") > -1) {
                String parm = line.substring(startSect, line.indexOf("??") - 1);
                endSect = parm.trim().length() + startSect - 1;
                return endSect;
            } else {
                String parm = line.substring(startSect, line.length());
                endSect = parm.trim().length() + startSect - 1;
                return endSect;
            }
        }

        //process $INCLUDE, $CALL_DATA
        if ((line.indexOf("[") > -1) & (line.indexOf("]") > -1) & (line.indexOf("]") > line.indexOf("["))) {
            endSect = line.indexOf("]");
            startSect = curpos;
            return endSect;
        }
        endSect = 0;
        curpos = 0;
        return 0;

    }

    private boolean checkSection(String text) {
        if ((text.indexOf("[") > -1) & (text.indexOf("]") > -1) & (text.indexOf("]") > text.indexOf("["))) {
            endSect = line.indexOf("]");
            startSect = curpos;
            return true;
        }
            return false;
    }
}
