/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dubna.walt.syntaxhighlighter;

import java.io.IOException;
import org.netbeans.core.spi.multiview.MultiViewElement;
import org.netbeans.core.spi.multiview.text.MultiViewEditorElement;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionReferences;
import org.openide.filesystems.FileObject;
import org.openide.filesystems.MIMEResolver;
import org.openide.loaders.DataObject;
import org.openide.loaders.DataObjectExistsException;
import org.openide.loaders.MultiDataObject;
import org.openide.loaders.MultiFileLoader;
import org.openide.util.Lookup;
import org.openide.util.NbBundle.Messages;
import org.openide.windows.TopComponent;

@Messages({
        "LBL_SJ_LOADER=Files of WALT"
})
@MIMEResolver.ExtensionRegistration(
        displayName = "#LBL_SJ_LOADER",
        mimeType = "text/x-walt",
        extension = {"cfg","CFG","wlt","WLT"})
@DataObject.Registration(
        mimeType = "text/x-walt",
        iconBase = "dubna/walt/syntaxhighlighter/NCIcon.png",
        displayName = "#LBL_SJ_LOADER",
        position = 300)
@ActionReferences({
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.OpenAction"),
                position = 100,
                separatorAfter = 200),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "Edit", id = "org.openide.actions.CutAction"),
                position = 300),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "Edit", id = "org.openide.actions.CopyAction"),
                position = 400,
                separatorAfter = 500),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "Edit", id = "org.openide.actions.DeleteAction"),
                position = 600),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.RenameAction"),
                position = 700,
                separatorAfter = 800),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.SaveAsTemplateAction"),
                position = 900,
                separatorAfter = 1000),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.FileSystemAction"),
                position = 1100,
                separatorAfter = 1200),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.ToolsAction"),
                position = 1300),
        @ActionReference(
                path = "Loaders/text/x-walt/Actions",
                id
                = @ActionID(category = "System", id = "org.openide.actions.PropertiesAction"),
                position = 1400)
})
public class NCDataObject extends MultiDataObject {

        public NCDataObject(FileObject pf, MultiFileLoader loader) throws DataObjectExistsException, IOException {
                super(pf, loader);
                registerEditor("text/x-walt", true);
        }

        @Override
        protected int associateLookup() {
                return 1;
        }

        @MultiViewElement.Registration(
                displayName = "#LBL_SJ_EDITOR",
                iconBase = "dubna/walt/syntaxhighlighter/NCIcon.png",
                mimeType = "text/x-walt",
                persistenceType = TopComponent.PERSISTENCE_ONLY_OPENED,
                preferredID = "NC",
                position = 1000)
        @Messages("LBL_SJ_EDITOR=Source")
        public static MultiViewEditorElement createEditor(Lookup lkp) {
                return new MultiViewEditorElement(lkp);
        }
}
