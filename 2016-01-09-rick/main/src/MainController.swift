//
//  ViewController.swift
//  2016-01-09-rick
//
//  Created by Anshu Wang on 16/1/9.
//  Copyright (c) 2016年 rick. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak  var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        btnLogin.addTarget(self, action: "onLoginBtnTap", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onLoginBtnTap(sender: AnyObject) {
        presentViewController( UIStoryboard(name: "Login", bundle: nil).instantiateViewControllerWithIdentifier("LoginViewController") as! UIViewController, animated: true, completion: nil)//LoginViewController 为viewController的storyboard id
    }
 

}

