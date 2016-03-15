//
//  KeyboardViewController.swift
//  GKeyboard
//
//  Created by Kenny Batista on 3/7/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .System)
    
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
    
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
    
        let nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        let nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
        

 
        
        
        
        
        
        
        
//        let tabBarController = UITabBarController()
//        
//        let myVC1 = OneVC(nibName: "OneVC", bundle: nil)
//        let myVC2 = TwoVC(nibName: "TwoVC", bundle: nil)
//        let myVC3 = ThreeVC(nibName: "ThreeVC", bundle: nil)
//        let myVC4 = FourVC(nibName: "FourVC", bundle: nil)
//        let myVC5 = FiveVC(nibName: "FiveVC", bundle: nil)
//        let myVC6 = SixVC(nibName: "SixVC", bundle: nil)
//        
//        
//        
//        let controllers = [myVC1,myVC2, myVC3,myVC4,myVC5,myVC6]
//        
//        tabBarController.viewControllers = controllers
//        
//        
//        
//        let firstImage = UIImage(named: "pie bar icon")
//        let secondImage = UIImage(named: "pizza bar icon")
//        
//        myVC1.tabBarItem = UITabBarItem(title: "Pie",image: firstImage,tag: 1)
//        
//        myVC2.tabBarItem = UITabBarItem(title: "Pizza",image: secondImage,tag:2)
//        
//        myVC3.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
//        
//        myVC4.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
//        
//        myVC5.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
//        
//        myVC6.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
//        
//        self.presentViewController(tabBarController, animated: true, completion: nil)
        
        
        
        let tabBarController = UITabBarController()
        
        let myVC1 = OneVC(nibName: "OneVC", bundle: nil)
        let myVC2 = TwoVC(nibName: "TwoVC", bundle: nil)
        let myVC3 = ThreeVC(nibName: "ThreeVC", bundle: nil)
        let myVC4 = FourVC(nibName: "FourVC", bundle: nil)
        let myVC5 = FiveVC(nibName: "FiveVC", bundle: nil)
        let myVC6 = SixVC(nibName: "SixVC", bundle: nil)
        
        
        
        let controllers = [myVC1,myVC2, myVC3,myVC4,myVC5,myVC6]
        
        tabBarController.viewControllers = controllers
        
        
        
        let firstImage = UIImage(named: "pie bar icon")
        let secondImage = UIImage(named: "pizza bar icon")
        
        myVC1.tabBarItem = UITabBarItem(title: "Pie",image: firstImage,tag: 1)
        
        myVC2.tabBarItem = UITabBarItem(title: "Pizza",image: secondImage,tag:2)
        
        myVC3.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
        
        myVC4.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
        
        myVC5.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
        
        myVC6.tabBarItem = UITabBarItem(title: "Three", image: secondImage, tag: 3)
        
        UITabBar.appearance().barTintColor = UIColor(red: 54, green: 51, blue: 66, alpha: 1)
            
        
        
        self.presentViewController(tabBarController, animated: true, completion: nil)
        
        
        
        
        
        let viewcontroller = UIViewController(nibName: "OneVC", bundle: nil)
        viewcontroller.view.backgroundColor = UIColor.whiteColor()
        self.presentViewController(viewcontroller, animated: true, completion: nil)
        
        
            }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

}
