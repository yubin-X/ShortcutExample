//
//  ViewController.swift
//  Shortcut
//
//  Created by apple on 2018/12/21.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /*
     
     add shortcut item triggered by some event
     
     */
    
    
    let button = UIButton(type: UIButton.ButtonType.contactAdd)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.addTarget(self, action: #selector(addShortcut), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func addShortcut() {
        
        let icon = UIApplicationShortcutIcon.init(templateImageName: "diamond")
        let item = UIApplicationShortcutItem(type: "new addtion", localizedTitle: "new addtion", localizedSubtitle: "subtitle", icon: icon, userInfo: nil)
        var shortcut = [UIApplicationShortcutItem]()
        if let sc = UIApplication.shared.shortcutItems {
            shortcut.append(contentsOf: sc)
        }
        
        shortcut.append(item)
        UIApplication.shared.shortcutItems = shortcut
        print("已添加")
        
        if let sc = UIApplication.shared.shortcutItems {
            sc.forEach { print( $0.localizedTitle ) }
        }
    }
}

