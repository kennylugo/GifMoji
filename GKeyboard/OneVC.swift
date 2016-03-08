//
//  OneVC.swift
//  CustomKeyboard
//
//  Created by Kenny Batista on 3/7/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class OneVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapped:")
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        self.view.addGestureRecognizer(longPressRecognizer)
        
        
    }
    
    func tapped(sender: UITapGestureRecognizer)
    {
        print("tapped")
    }
    
    func longPressed(sender: UILongPressGestureRecognizer)
    {
        print("longpressed")
    }
    

    
   
    
    

    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
