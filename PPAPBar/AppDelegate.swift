//
//  AppDelegate.swift
//  PPAPBar
//
//  Created by EnsekiTT on 2016/11/20.
//  Copyright © 2016年 EnsekiTT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        if NSClassFromString("NSTouchBar") != nil {
            NSApplication.shared().isAutomaticCustomizeTouchBarMenuItemEnabled = true
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

