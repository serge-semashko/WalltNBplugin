/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dubna.walt.syntaxhighlighter;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.KeyEvent;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.ImageIcon;
import javax.swing.text.BadLocationException;
import javax.swing.text.JTextComponent;
import javax.swing.text.StyledDocument;
import org.netbeans.api.editor.completion.Completion;
import org.netbeans.spi.editor.completion.CompletionItem;
import org.netbeans.spi.editor.completion.CompletionTask;
import org.netbeans.spi.editor.completion.support.CompletionUtilities;
import org.openide.util.Exceptions;
import org.openide.util.ImageUtilities;

/**
 *
 * @author Semashko
 */
public class CountriesCompletionItem implements CompletionItem {

    private String text;
    private static ImageIcon fieldIcon = new ImageIcon(ImageUtilities.loadImage("dubna/walt/syntaxhighlighter/icocfg.png"));
    private static Color fieldColor = Color.decode("0x0000B2");
    private int caretOffset;

    public CountriesCompletionItem(String text, int caretOffset) {
        log2("##CountriesCompletionItem##");
        this.text = text;
        this.caretOffset = caretOffset;
    }

    @Override
    public void defaultAction(JTextComponent jtc) {
        log2("##defaultAct##");
        try {
            StyledDocument doc = (StyledDocument) jtc.getDocument();
            doc.insertString(caretOffset, text, null);
//This statement will close the code completion box: 
            Completion.get().hideAll();
        } catch (BadLocationException ex) {
            Exceptions.printStackTrace(ex);
        }
    }

    @Override
    public void processKeyEvent(KeyEvent ke) {
        log2("##proc key##");
    }

    @Override
    public int getPreferredWidth(Graphics graphics, Font font) {
        log2("##get preffered##");
        return CompletionUtilities.getPreferredWidth(text, null, graphics, font);
    }
    
    public static void log2(String lstr) {
        try {
            FileWriter file = new FileWriter("f:/home/nb/log.txt");
            String ll = lstr+"\n";
            file.append(ll);
            file.flush();
            file.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void render(Graphics g, Font defaultFont, Color defaultColor, Color backgroundColor, int width, int height, boolean selected) {
        log2("##render key##");
        CompletionUtilities.renderHtml(fieldIcon, text, null, g, defaultFont, (selected ? Color.white : fieldColor), width, height, selected);
    }

    @Override
    public CompletionTask createDocumentationTask() {
        log2("##createDocumentationTask##");
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return null;
    }

    @Override
    public CompletionTask createToolTipTask() {
        log2("##createToolTipTask##");
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return null;
    }

    @Override
    public boolean instantSubstitution(JTextComponent jtc) {
        log2("##instantSubstitution##");
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return false;
    }

    @Override
    public int getSortPriority() {
        log2("##getSortPriority##");
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return 0;
    }

    @Override
    public CharSequence getSortText() {
        log2("##getSortedtext##");
        return text;
    }

    @Override
    public CharSequence getInsertPrefix() {
        log2("##getinsert##");
        return text;
    }
}
