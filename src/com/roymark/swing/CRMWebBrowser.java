package com.roymark.swing;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Toolkit;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import chrriis.common.UIUtils;
import chrriis.dj.nativeswing.NSOption;
import chrriis.dj.nativeswing.swtimpl.NativeInterface;
import chrriis.dj.nativeswing.swtimpl.components.JWebBrowser;

public class CRMWebBrowser extends JPanel {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public CRMWebBrowser() {  
        super(new BorderLayout());  
        JPanel webBrowserPanel = new JPanel(new BorderLayout());  
        JWebBrowser webBrowser = new JWebBrowser(new NSOption[0]);  
        webBrowser.navigate("http://localhost:8080/RoyMark2/firstenter.do");  
        webBrowserPanel.add(webBrowser, "Center");  
        add(webBrowserPanel, "Center");  
        webBrowser.setMenuBarVisible(false);  
        webBrowser.setLocationBarVisible(false);  
        webBrowser.setBarsVisible(false);  
        webBrowser.setOpaque(false);  
        webBrowser.setStatusBarVisible(false);  
        JPanel buttonPanel = new JPanel(new FlowLayout(1, 10, 4));  
        add(buttonPanel, "South");  
    }  
    public static void main(String[] args) {  
        UIUtils.setPreferredLookAndFeel();  
        NativeInterface.open();  
        SwingUtilities.invokeLater(new Runnable() {  
            public void run() {  
                JFrame frame = new JFrame("²éÑ¯Èí¼þ");  
                frame.setDefaultCloseOperation(3);  
                frame.setIconImage(Toolkit.getDefaultToolkit().createImage(  
                        "/icon.png"));  
                frame.getContentPane().add(new CRMWebBrowser(), "Center");  
                frame.setExtendedState(6);  
                frame.setDefaultCloseOperation(3);  
                frame.setLocationByPlatform(true);  
                frame.setVisible(true);  
            }  
        });  
        NativeInterface.runEventPump();  
    }  
}  
