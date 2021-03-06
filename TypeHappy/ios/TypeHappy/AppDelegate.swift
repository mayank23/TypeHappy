//
//  AppDelegate.swift
//  TypeHappy
//
//  Created by Mayank Jethva on 7/2/17.
//  Copyright © 2017 Mayank Jethva. All rights reserved.
//

import UIKit
import React

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var rctBridge : RCTBridge?;
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let jsCodeLocation = URL(string: "http://192.168.2.5:8081/index.ios.bundle?platform=ios");
        self.rctBridge = RCTBridge.init(bundleURL: jsCodeLocation, moduleProvider: nil, launchOptions: nil)
        self.window?.rootViewController = ReactBootstrap.bootstrapRootViewController(rctBridge: rctBridge!)
        self.window?.makeKeyAndVisible()
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

class ReactBootstrap {
   
    /*static func bootstrapRootViewController() -> UIViewController{
        let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        let reactRootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "THYHome",
            initialProperties: nil,
            launchOptions: nil
        )
        let reactRootViewController = UIViewController()
        reactRootViewController.view = reactRootView
        return reactRootViewController;
    }*/
    
    static func bootstrapRootViewController(rctBridge: RCTBridge) -> UIViewController{
     let reactRootView = RCTRootView.init(bridge: rctBridge, moduleName: "THYHome", initialProperties: nil)
     let reactRootViewController = UIViewController()
     reactRootViewController.view = reactRootView
     return reactRootViewController;
     }
}

