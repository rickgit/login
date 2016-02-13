//
//  LoginViewController.swift
//  
//
//  Created by Anshu Wang on 16/1/9.
//
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBAction func onRigist(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: { () -> Void in
            NSLog("dismiss Login ViewController")
        })
    }
    @IBOutlet weak var svHeight: NSLayoutConstraint!
         override func viewDidLoad() {
        super.viewDidLoad()
         
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //更新约束
//    - (void)updateViewConstraints {
//    [super updateViewConstraints];
//    //设置为两个屏幕的宽度
//    self.viewWidth.constant = CGRectGetWidth([UIScreen mainScreen].bounds) * 2;
//    self.secondViewLeading.constant = CGRectGetWidth([UIScreen mainScreen].bounds);
//    }
    override func updateViewConstraints() {
        super.updateViewConstraints() 
//        self.svHeight.constant=CGRectGetHeight(UIScreen.mainScreen().bounds)
        
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
