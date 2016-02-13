//
//  BaseViewController.swift
//  
//
//  Created by Anshu Wang on 16/2/7.
//
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setNavigationLeft(imgPath:NSString){
        var img:UIImage=UIImage(named: imgPath as String)!
        var imgeBtn:UIImageView=UIImageView(frame: CGRect(x: 0, y: 0, width: 64, height: 36))
        imgeBtn.backgroundColor=UIColor(red: 55/255, green: 186/255, blue: 89/255, alpha: 0.5)
        //兼容ios6
        var leftBarBtnItm:UIBarButtonItem=UIBarButtonItem(customView: imgeBtn)
        self.navigationItem.leftBarButtonItem=leftBarBtnItm
    }
    func setNavigationRight(imgPath:NSString){
//        var img:UIImage=UIImage(named: imgPath as String)!
//        var imgeBtn:UIImageView=UIImageView(frame: CGRect(x: 0, y: 0, width: 64, height: 36))
//        var leftBarBtnItm:UIBarButtonItem=UIBarButtonItem(customView: imgeBtn)
//        self.navigationItem.rightBarButtonItem=leftBarBtnItm
    }
    
    func setNavigationTitle(title:NSString){
        self.navigationItem.title=title as String
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
