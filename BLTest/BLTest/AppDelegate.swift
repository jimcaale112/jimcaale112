//
//  AppDelegate.swift
//  BLTest
//
//  Created by mohamed Jimale on 12/9/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

        //var window: UIWindow?
        var bleService: BleService?
        var model: Model?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
                let bls = BleService()
                bleService = bls
                model = Model(bleService: bls)
        return true
    }

    // MARK: UISceneSession Lifecycle
     @available (iOS 13, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available (iOS 13, *)

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


//
//#import <UIKit/UIKit.h>
//
//@interface AppDelegate : UIResponder <UIApplicationDelegate>
//
//
//@end
