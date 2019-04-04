//
//  ManTabBarController.swift
//  instagramFirebase
//
//  Created by User on 01/04/2019.
//  Copyright © 2019 Simonas Daniliauskas. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let loginController = LoginViewController()
                let navController = UINavigationController(rootViewController: loginController)
                self.present(navController, animated: true, completion: nil)
            }

            return
        }

        setupViewControllers()
    }

    func setupViewControllers() {
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: userProfileController)

        navController.tabBarItem.image = UIImage(named: "profile_unselected")
        navController.tabBarItem.image = UIImage(named: "profile_selected")

        tabBar.tintColor = .black

        viewControllers = [navController, UIViewController()]
    }
}
