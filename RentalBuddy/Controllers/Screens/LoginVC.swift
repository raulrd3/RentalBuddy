//
//  ViewController.swift
//  RentalBuddy
//
//  Created by Raul Rodriguez III on 3/4/22.
//

import UIKit

class LoginVC: UIViewController {
    
//    let logoImageView = UIImageView()
    let loginImageView = UIImageView()
    let usernameTextField = SNTextField()
    let passwordTextField = SNTextField()
    let loginButton = SNButton(backgroundColor: .systemGreen, title: "Login", systemImageName: "key.fill")
    let registerButton = SNButton(backgroundColor: .systemPurple, title: "Guest", systemImageName: "person.fill")
    
    let height: CGFloat = 40.0
    let padding: CGFloat = 50
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        configureLoginImage()
//        configureLogoImage()
        configureTextFields()
        createDismissKeyboardTapGesture()
        displayButtons()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
    
    
    @objc func loginTapped(_ sender: UIButton) {
        print("button tapped")

        let homeVC = HomeVC()
        let testVC = UINavigationController(rootViewController: homeVC)
        
        testVC.modalPresentationStyle = .fullScreen
        present(testVC, animated: true, completion: nil)
    }
    
    
    
    func configureLoginImage(){
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        loginImageView.image = UIImage(named: SNImages.loginImage.rawValue)
        
        view.addSubview(loginImageView)
        
        NSLayoutConstraint.activate([
            loginImageView.topAnchor.constraint(equalTo: view.topAnchor),
            loginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1.0),
            loginImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.8)
        ])
    }
    

//    func configureLogoImage() {
//        logoImageView.translatesAutoresizingMaskIntoConstraints = false
//        logoImageView.image = UIImage(named: SNImages.logoImage.rawValue)
//
//        view.addSubview(logoImageView)
//
//        NSLayoutConstraint.activate([
//            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
//            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            logoImageView.widthAnchor.constraint(equalToConstant: 100),
//            logoImageView.heightAnchor.constraint(equalToConstant: 100)
//        ])
//    }
    
    
    func configureTextFields() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        passwordTextField.placeholder = "password"
        passwordTextField.isSecureTextEntry = true
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 285),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            usernameTextField.heightAnchor.constraint(equalToConstant: height),
            
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: usernameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: usernameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
    
    
#warning ("add sign in w/apple ID as option")
//https://help.apple.com/developer-account/?lang=en#/devde676e696
    
    func displayButtons(){
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        
        
        
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 250),
            loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: height),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25),
            registerButton.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: height)
        ])
    }
}
