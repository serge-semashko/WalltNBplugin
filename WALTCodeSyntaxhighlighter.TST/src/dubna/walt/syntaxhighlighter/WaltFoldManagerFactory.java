/*
 */
package dubna.walt.syntaxhighlighter;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.spi.editor.fold.FoldManager;
import org.netbeans.spi.editor.fold.FoldManagerFactory;

//@MimeRegistration(mimeType="text/x-walt",service=FoldManagerFactory.class)
public class WaltFoldManagerFactory implements FoldManagerFactory {
    
    @Override
    public FoldManager createFoldManager() {
//        System.out.println("# fold manager#  create manager");
        return new waltCFoldManager();
    }
}
