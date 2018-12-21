//
//  AppDelegate.swift
//  Shortcut
//
//  Created by apple on 2018/12/21.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        registerShortcut()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}


extension AppDelegate {
    
    
    /*
     when there are less than 4 shortitem ,they all will be displayed. otherwise, only for shortitem can be displayed
     */
    
    
    // register shortcut item
    func registerShortcut() {
        var items = [UIApplicationShortcutItem]()
        for index in 0..<3 {
            
            // get system shortcut IconType from enumeration rawvalue
            let iconType = UIApplicationShortcutIcon.IconType.init(rawValue: index) ?? .compose
            // new a system shortcut icon
            let icon = UIApplicationShortcutIcon.init(type: iconType)
            // new a shortcut item
            let item = UIApplicationShortcutItem(type: iconType.description, localizedTitle: iconType.description, localizedSubtitle: nil, icon: icon, userInfo: nil)
            items.append(item)
        }
        UIApplication.shared.shortcutItems = items
    }
    
    // handle shortcut item
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        switch shortcutItem.type {
        case "compose":
            print("Handle specified type:\(shortcutItem.type)")
        default:
            print("Default handle:\(shortcutItem.type)")
        }
    }
}

extension UIApplicationShortcutIcon.IconType {
    
    var description:String {
        switch self {
            
        case .compose:
            return "compose"
            
        case .play:
            return "play"
            
        case .pause:
            return "pause"
            
        case .add:
            return "add"
            
        case .location:
            return "location"
            
        case .search:
            return "search"
            
        case .share:
            return "share"
            
        case .prohibit:
            return "prohibit"
            
        case .contact:
            return "contact"
            
        case .home:
            return "home"
            
        case .markLocation:
            return "markLocation"
            
        case .favorite:
            return "favorite"
            
        case .love:
            return "love"
            
        case .cloud:
            return "cloud"
            
        case .invitation:
            return "invitation"
            
        case .confirmation:
            return "confirmation"
            
        case .mail:
            return "mail"
            
        case .message:
            return "message"
            
        case .date:
            return "date"
            
        case .time:
            return "time"
            
        case .capturePhoto:
            return "capturePhoto"
            
        case .captureVideo:
            return "captureVideo"
            
        case .task:
            return "task"
            
        case .taskCompleted:
            return "taskCompleted"
            
        case .alarm:
            return "alarm"
            
        case .bookmark:
            return "bookmark"
            
        case .shuffle:
            return "shuffle"
            
        case .audio:
            return "audio"
            
        case .update:
            return "update"
            
        }
    }
}
