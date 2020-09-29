//
//  MainBarViewController.swift
//  Eggcial
//
//  Created by Khemmachat Thongkhum on 16/7/2563 BE.
//  Copyright © 2563 Khemmachat Thongkhum. All rights reserved.
//

import UIKit
import Flutter
import MaterialComponents.MaterialAppBar

class MainBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        let homeWithAppBar = MDCAppBarNavigationController(rootViewController: homeViewController)
        let homeAppBarController = homeWithAppBar.appBar(for: homeViewController)?.appBarViewController
        homeAppBarController?.headerView.backgroundColor = UIColor(red: 98/255, green: 0/255, blue: 238/255, alpha: 1)
        homeAppBarController?.navigationBar.titleTextColor = .white
        homeAppBarController?.headerView.elevation = ShadowElevation(4)
        
        let messageEngine = (UIApplication.shared.delegate as! AppDelegate).messageFlutterEngine
        let messageViewController = FlutterViewController(engine: messageEngine, nibName: nil, bundle: nil)
        let messageTabItem = UITabBarItem(
            title: "Message",
            image: UIImage(systemName: "message.fill"),
            selectedImage: UIImage(systemName: "message.fill")
        )
        messageViewController.tabBarItem = messageTabItem
        
        let profileEngine = (UIApplication.shared.delegate as! AppDelegate).profileFlutterEngine
        let profileViewController = FlutterViewController(engine: profileEngine, nibName: nil, bundle: nil)
        let profileTabItem = UITabBarItem(
            title: "Message",
            image: UIImage(systemName: "person.crop.circle.fill"),
            selectedImage: UIImage(systemName: "person.crop.circle.fill")
        )
        profileViewController.tabBarItem = profileTabItem
        
        viewControllers?.removeSubrange(0...2)
        viewControllers?.append(contentsOf: [homeWithAppBar, messageViewController, profileViewController])
    }
}
