//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by Kenny Batista on 3/7/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapped:")
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        self.view.addGestureRecognizer(longPressRecognizer)
        
        
        textfield.becomeFirstResponder()
       
    }
    
    func tapped(sender: UITapGestureRecognizer)
    {
        let randomRed = CGFloat(drand48())
        
        
          let randomGreen = CGFloat(drand48())
        
          let randomBlue = CGFloat(drand48())
        self.view.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }
    
    func longPressed(sender: UILongPressGestureRecognizer)
    {
        print("longpressed")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

