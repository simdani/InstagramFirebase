//
//  ManTabBarController.swift
//  instagramFirebase
//
//  Created by User on 01/04/2019.
//  Copyright © 2019 Simonas Daniliauskas. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: userProfileController)
        
        navController.tabBarItem.image = UIImage(named: "profile_unselected")
        navController.tabBarItem.image = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [navController, UIViewController()]
    }
}
