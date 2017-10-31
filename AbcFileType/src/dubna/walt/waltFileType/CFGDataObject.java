/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dubna.walt.waltFileType;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import org.netbeans.core.spi.multiview.MultiViewElement;
import org.netbeans.core.spi.multiview.text.MultiViewEditorElement;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionReferences;
import org.openide.filesystems.FileObject;
import org.openide.filesystems.MIMEResolver;
import org.openide.loaders.DataNode;
import org.openide.loaders.DataObject;
import org.openide.loaders.DataObjectExistsException;
import org.openide.loaders.MultiDataObject;
import org.openide.loaders.MultiFileLoader;
import org.openide.nodes.AbstractNode;
import org.openide.nodes.ChildFactory;
import org.openide.nodes.Children;
import org.openide.nodes.Node;
import org.openide.util.Exceptions;
import org.openide.util.Lookup;
import org.openide.util.NbBundle.Messages;
import org.openide.windows.TopComponent;

@Messages({
    "LBL_Abc_LOADER=Files of wlt"
})
@MIMEResolver.ExtensionRegistration(
        displayName = "#LBL_Abc_LOADER",
        mimeType = "text/x-wlt",
        extension = {"wlt", "WLT"}
)
@DataObject.Registration(
        mimeType = "text/x-wlt",
        iconBase = "dubna/walt/waltFileType/icocfg.png",
        displayName = "#LBL_Abc_LOADER",
        position = 300
)
@ActionReferences({
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.OpenAction"),
            position = 100,
            separatorAfter = 200
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "Edit", id = "org.openide.actions.CutAction"),
            position = 300
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "Edit", id = "org.openide.actions.CopyAction"),
            position = 400,
            separatorAfter = 500
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "Edit", id = "org.openide.actions.DeleteAction"),
            position = 600
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.RenameAction"),
            position = 700,
            separatorAfter = 800
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.SaveAsTemplateAction"),
            position = 900,
            separatorAfter = 1000
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.FileSystemAction"),
            position = 1100,
            separatorAfter = 1200
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.ToolsAction"),
            position = 1300
    )
    ,
    @ActionReference(
            path = "Loaders/text/x-wlt/Actions",
            id = @ActionID(category = "System", id = "org.openide.actions.PropertiesAction"),
            position = 1400
    )
})
public class CFGDataObject extends MultiDataObject {

    public CFGDataObject(FileObject pf, MultiFileLoader loader) throws DataObjectExistsException, IOException {
        super(pf, loader);
        registerEditor("text/x-wlt", true);
    }

    @Override
    protected int associateLookup() {
        return 1;
    }

    @MultiViewElement.Registration(
            displayName = "#LBL_Abc_EDITOR",
            iconBase = "dubna/walt/waltFileType/icocfg.png",
            mimeType = "text/x-wlt",
            persistenceType = TopComponent.PERSISTENCE_ONLY_OPENED,
            preferredID = "Abc",
            position = 1000
    )
    @Messages("LBL_Abc_EDITOR=Source")
    public static MultiViewEditorElement createEditor(Lookup lkp) {
        return new MultiViewEditorElement(lkp);
    }

//    @Override
//    protected Node createNodeDelegate() {
//        return new DataNode(this, Children.LEAF, getLookup());
//    }
    @Override
    protected Node createNodeDelegate() {
                    FileWriter file;

        return new DataNode(
                this,
                Children.create(new AbcChildFactory(this), true),
                getLookup());
    }

    private static class AbcChildFactory extends ChildFactory<String> {

        private final CFGDataObject dObj;

        public AbcChildFactory(CFGDataObject dObj) {
            this.dObj = dObj;
        }

        @Override
        protected boolean createKeys(List list) {
            FileObject fObj = dObj.getPrimaryFile();
            try {
                List<String> dObjContent = fObj.asLines();
                for (int i = 0; i < dObjContent.size(); i++) {
                    String s1 = dObjContent.get(i);
                    
                    while (s1.charAt(0) == ' ') {
                        s1 = s1.substring(1);
                    }
                    String s2 = new String(s1);
                    if (s1.startsWith("[")) {
                        s1 = s1.substring(1);
                        while (s1.charAt(0) != ']') {
                            s1 = s1.substring(1);
                        }
                        if ((s1.length() > 0) && (s1.charAt(0) == ']')) {
                            list.add(s2);
                        }
                    }
                }
            } catch (IOException ex) {
                Exceptions.printStackTrace(ex);
            }
            return true;
        }

        @Override
        protected Node createNodeForKey(String key) {
            Node childNode = new AbstractNode(Children.LEAF);
            childNode.setDisplayName(key);
            return childNode;
        }

    }

}
