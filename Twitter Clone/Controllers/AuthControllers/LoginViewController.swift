//
//  LoginViewController.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 13/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    private let logoImageView : UIImageView = {
        let img = UIImageView()
        img.image = Utilities().imageResizer(image: #imageLiteral(resourceName: "brandlogo"), size: CGSize(width: CGFloat(100), height: CGFloat(100)))
        return img
    }()
    
    private lazy var emailContainerView : UIView = Utilities().inputContainerView(withImage: #imageLiteral(resourceName: "email_ico"),textField: emailTextField)
    private lazy var passwordContainerView : UIView = Utilities().inputContainerView(withImage: #imageLiteral(resourceName: "lock_ico"),textField: passwordTextField)
    
    private let emailTextField : UITextField = Utilities().textFieldContainerView(withPlaceholder: "Email")
    private let passwordTextField : UITextField = {
        let ptf = Utilities().textFieldContainerView(withPlaceholder: "Password")
        ptf.isSecureTextEntry = true
        return ptf
    }()
    
    private let loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(UIColor(red: 50/255, green: 190/255, blue: 237/255, alpha: 1), for: .normal)
        btn.backgroundColor = .white
        btn.heightAnchor.constraint(equalToConstant: CGFloat(50)).isActive = true
        btn.addTarget(self, action: #selector(loginClicked), for: .touchUpInside)
        btn.layer.cornerRadius = 10
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    
    
    private let redirectToRegister : UIButton = {
        let btn = Utilities().attributedButton("Don't have an account", " Sign Up")
        btn.addTarget(self, action: #selector(redirectToRegisterClicked), for: .touchUpInside)
        return btn
    }()
    
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 50/255, green: 190/255, blue: 237/255, alpha: 1)
        configUI()
    }
    
    // MARK: - Selectors
    @objc func loginClicked(){
        print("login triggered")
        print(emailTextField.text ?? "",passwordTextField.text ?? "")
    }
    
    @objc func redirectToRegisterClicked(){
        print("redirect triggered")
        print(emailTextField.text ?? "",passwordTextField.text ?? "")
    }
    
    
    // MARK: - Helpers
    private func configUI(){
        navigationController?.navigationBar.isHidden = true
        configLogoUI()
        configInputContainerStackUI()
        redirectToRegisterConfigUI()
    }
    
    
    private func configLogoUI(){
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        
    
    }
    
    private func configInputContainerStackUI(){
        let stackView = UIStackView(arrangedSubviews: [emailContainerView,passwordContainerView,loginButton])
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10).isActive = true
    }
    
    private func redirectToRegisterConfigUI(){
        view.addSubview(redirectToRegister)
        redirectToRegister.translatesAutoresizingMaskIntoConstraints = false
        redirectToRegister.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        redirectToRegister.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
       
    }
    
    
    // MARK: - Delegates
  
    
    
}
