//
//  AppDelegate.swift
//  Eggcial
//
//  Created by Khemmachat Thongkhum on 16/7/2563 BE.
//  Copyright © 2563 Khemmachat Thongkhum. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    lazy var messageFlutterEngine = FlutterEngine(name: "message flutter engine")
    lazy var profileFlutterEngine = FlutterEngine(name: "profile flutter engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        messageFlutterEngine.run(withEntrypoint: "message")
        profileFlutterEngine.run(withEntrypoint: "profile")
        
        GeneratedPluginRegistrant.register(with: self.messageFlutterEngine);
        GeneratedPluginRegistrant.register(with: self.profileFlutterEngine);
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    override func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    override func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

