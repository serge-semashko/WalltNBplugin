/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.myorg.abcfiletype;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import org.openide.DialogDisplayer;
import org.openide.NotifyDescriptor;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionRegistration;
import org.openide.filesystems.FileObject;
import org.openide.filesystems.FileUtil;
import org.openide.util.NbBundle.Messages;

@ActionID(
        category = "File",
        id = "org.myorg.abcfiletype.StartAnalyzerActionListener"
)
@ActionRegistration(
        displayName = "#CTL_StartAnalyzerActionListener"
)
@ActionReference(path = "Loaders/text/x-wlt/Actions", position = 0, separatorBefore = -50, separatorAfter = 50)
@Messages("CTL_StartAnalyzerActionListener=Start Analyzer")
public final class StartAnalyzerActionListener implements ActionListener {

    private final AbcDataObject context;

    public StartAnalyzerActionListener(AbcDataObject context) {
        this.context = context;
    }

 @Override
public void actionPerformed(ActionEvent ev) {
   FileObject f = context.getPrimaryFile();
   String displayName = FileUtil.getFileDisplayName(f);
   String msg = "I am " + displayName + ". Hear me roar!";
   NotifyDescriptor nd = new NotifyDescriptor.Message(msg);
   DialogDisplayer.getDefault().notify(nd);
}
}
