//
//  LoginViewController.swift
//  instagram
//
//  Created by Roman Yang on 2023/7/31.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let usernameEmailField:UITextField={
        return UITextField()
    }()
    
    private let passwordField:UITextField={
        let field = UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton:UIButton={
        return UIButton()
    }()
    
    private let termsButton:UIButton={
        return UIButton()
    }()
    
    private let privacyButton:UIButton={
        return UIButton()
    }()
    
    private let createAccountButton:UIButton={
        return UIButton()
    }()
    
    private let headerView:UIView={
        return UIView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        view.backgroundColor = .systemBackground
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // assign frames
    }
    
    
    private func addSubviews(){
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(headerView)
        view.addSubview(createAccountButton)
    }
    
    @objc private func didTapLoginButton() {}
    
    @objc private func didTapTermsButton() {}
    
    @objc private func didTapPrivacyButton() {}
    
    @objc private func didTapCreateAccountButton() {}
 
}
