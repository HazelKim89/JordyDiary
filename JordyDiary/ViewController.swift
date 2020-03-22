//
//  ViewController.swift
//  JordyDiary
//
//  Created by Chloe on 17/03/2020.
//  Copyright © 2020 Hazel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var KoreanName: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let userId: String? = UserDefaults.standard.object(forKey: "userId") as? String
    
    if isLoggedin(userId: userId) {
      let greeting = UILabel(frame: CGRect(x: 0.0, y: Double(KoreanName.center.y + 20.0), width: Double(self.view.bounds.width), height: 200))
      greeting.font = UIFont(name: "Noteworthy", size: 20)
      greeting.textColor = .black
      greeting.textAlignment = .center
      greeting.text = "Welcom back!"
      view.addSubview(greeting)
    } else {
      guard let getEmailImage = UIImage(named: "Email") else {return}
      let emailBtnY = Double(KoreanName.center.y + 70)
      guard let emailButton = self.buttonMaker(image: getEmailImage, signMethod: "Email", titleColor: UIColor.white, setY: emailBtnY)
      else {
        print("fail to make email login button")
        return
      }
      
      guard let getGoogleImage = UIImage(named: "Google") else {return}
      let googleBtnY = Double(emailButton.center.y + 40)
      guard let googleButton = self.buttonMaker(image: getGoogleImage, signMethod: "Google", titleColor: UIColor.black, setY: googleBtnY)
      else {
        print("fail to make google login button")
        return
      }
     
      view.addSubview(emailButton)
      view.addSubview(googleButton)
      
    }

    // Do any additional setup after loading the view.
  }
  
  func isLoggedin(userId: String?) -> Bool {
    guard (userId != nil) else {
      print("not logged in")
      return false
    }
    print("logged in")
    return true
  }
  
  func buttonMaker (image: UIImage, signMethod: String, titleColor: UIColor, setY: Double) -> UIButton? {
    let width: CGFloat = image.size.width
    let height: Double = Double(image.size.height)
    let newButton = UIButton(frame: CGRect(x: Double(self.view.bounds.width - width) / 2 , y: setY, width: Double(width), height: height))
    
    newButton.setBackgroundImage(image, for: .normal)
    newButton.imageView?.contentMode = .scaleAspectFit
    newButton.setTitle("Sign in with \(signMethod)", for: .normal)
    newButton.setTitleColor(titleColor, for: .normal)
    newButton.contentHorizontalAlignment = .left
    newButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    newButton.layer.borderWidth = 1
    newButton.layer.borderColor = UIColor.white.cgColor
    newButton.layer.cornerRadius = 10
    newButton.clipsToBounds = true
    return newButton
  }
  
  
  


}

