//
//  LoginViewController.swift
//  instagramFirebase
//
//  Created by User on 02/04/2019.
//  Copyright © 2019 Simonas Daniliauskas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dont' have an account? Sign up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
    }()
    
    @objc func handleShowSignUp() {
        let signUpController = SingUpViewController()
        
        navigationController?.pushViewController(signUpController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = .white
        
        view.addSubview(signUpButton)
        signUpButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -16, paddingRight: 0, width: 0, height: 50)
    }
}
