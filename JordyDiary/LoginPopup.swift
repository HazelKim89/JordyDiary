//
//  LoginPopup.swift
//  JordyDiary
//
//  Created by Chloe on 23/03/2020.
//  Copyright © 2020 Hazel. All rights reserved.
//

import UIKit

class LoginPopup: UIView {
  
  // MARK: - Properties
  
  let emailLabel: UILabel = {
    let emailLabel = UILabel()
    emailLabel.text = "Email"
    emailLabel.textColor = .black
    emailLabel.translatesAutoresizingMaskIntoConstraints = false
    return emailLabel
  }()
  
  let passwordLabel: UILabel = {
    let passwordLabel = UILabel()
    passwordLabel.text = "Password"
    passwordLabel.textColor = .black
    passwordLabel.translatesAutoresizingMaskIntoConstraints = false
    return passwordLabel
  }()
  
  let mailTextfield: UITextField = {
    let mailTextfield = UITextField()
    mailTextfield.placeholder = "E-mail"
    mailTextfield.backgroundColor = UIColor(red: 251/255, green: 222/255, blue: 126/255, alpha: 1.0)
    mailTextfield.borderStyle = .roundedRect
    mailTextfield.translatesAutoresizingMaskIntoConstraints = false
    return mailTextfield
  }()
  
  let passwordTextfield: UITextField = {
    let passwordTextField = UITextField()
    passwordTextField.placeholder = "password"
    passwordTextField.backgroundColor = UIColor(red: 251/255, green: 222/255, blue: 126/255, alpha: 1.0)
    passwordTextField.borderStyle = .roundedRect
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    return passwordTextField
  }()
  
  let loginButton: UIButton = {
    let loginButton = UIButton()
    loginButton.backgroundColor = UIColor(red: 165/255, green: 232/255, blue: 171/255, alpha: 1.0)
    loginButton.setTitle("Login", for: .normal)
    loginButton.setTitleColor(.black, for: .normal)
    loginButton.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    loginButton.contentHorizontalAlignment = .center
    loginButton.layer.cornerRadius = 10
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    return loginButton
  }()
  
  let closeButton: UIButton = {
    let closeButton = UIButton()
    closeButton.setTitle("✖️", for: .normal)
    closeButton.layer.cornerRadius = 15
    closeButton.setTitleColor(.black, for: .normal)
    closeButton.translatesAutoresizingMaskIntoConstraints = false
    return closeButton
  }()
  // MARK: - Init
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor(red: 248/255, green: 211/255, blue: 213/255, alpha: 1.0)
    
//
//    addSubview(mailTextfield)
//    mailTextfield.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 40).isActive = true
//    mailTextfield.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
//    mailTextfield.widthAnchor.constraint(equalTo: widthAnchor, constant: -130).isActive = true
//    mailTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    addSubview(emailLabel)
    emailLabel.topAnchor.constraint(equalTo: topAnchor, constant: 65).isActive = true
    emailLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
    
    addSubview(mailTextfield)
    mailTextfield.leftAnchor.constraint(equalTo: emailLabel.rightAnchor, constant: 50).isActive = true
    mailTextfield.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: -15).isActive =  true
    mailTextfield.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
    mailTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true

    addSubview(passwordLabel)
    passwordLabel.topAnchor.constraint(greaterThanOrEqualTo: mailTextfield.bottomAnchor, constant: 25).isActive = true
    passwordLabel.leftAnchor.constraint(equalTo: emailLabel.leftAnchor).isActive = true
    
    addSubview(passwordTextfield)
    passwordTextfield.topAnchor.constraint(equalTo: mailTextfield.bottomAnchor, constant: 10).isActive = true
    passwordTextfield.leftAnchor.constraint(equalTo: mailTextfield.leftAnchor).isActive = true
    passwordTextfield.widthAnchor.constraint(equalTo: mailTextfield.widthAnchor).isActive = true
    passwordTextfield.heightAnchor.constraint(equalTo: mailTextfield.heightAnchor).isActive = true
    
    addSubview(loginButton)
    loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    loginButton.widthAnchor.constraint(equalTo: widthAnchor, constant: -80).isActive = true
    loginButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 20).isActive = true
    loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

    addSubview(closeButton)
    closeButton.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
    closeButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
    closeButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
    closeButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
  
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
