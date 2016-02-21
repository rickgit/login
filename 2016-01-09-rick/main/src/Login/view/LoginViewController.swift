//
//  LoginViewController.swift
//  
//
//  Created by Anshu Wang on 16/1/9.
//
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var imageviewLogo: UIImageView!
    @IBAction func onRigist(sender: AnyObject) {
//        dismissViewControllerAnimated(true, completion: { () -> Void in
//            NSLog("dismiss Login ViewController")
//
//            
//        })
        var url=NSURL(string: "http://d.hiphotos.baidu.com/baike/w%3D730/sign=ae20b38f962397ddd6799a076982b216/9c16fdfaaf51f3de7f97330c93eef01f3a2979b5.jpg")
        var request=NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()){(response:NSURLResponse!, data:NSData!, error:NSError!)->Void in
//            NSLog("\(data)")
            var img=UIImage(data: data)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.imageviewLogo.image=img
            })
            
        }
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
