//
//  MainController.swift
//  2016-01-09-rick
//
//  Created by Anshu Wang on 16/1/26.
//  Copyright (c) 2016年 rick. All rights reserved.
//

import UIKit
class ScrollViewController: UIViewController {
    var myscr : UIScrollView?
    var mytext : UITextField?
    var mylbl : UILabel?
    var mytext2 : UITextField?
    var mylbl2 : UILabel?
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Scroll Vide Demo"
        createview() //calling the method
        // Do any additional setup after loading the view.
    }
    func createview(){
        var screenBounds:CGRect = UIScreen.mainScreen().bounds
        var screenWidth=screenBounds.width;
        var screenHeight=screenBounds.height;
        myscr = UIScrollView()
        myscr!.frame = CGRectMake(0,0,screenWidth,screenHeight)
        myscr!.contentSize = CGSizeMake(screenWidth,screenHeight*2)
        myscr!.scrollEnabled = true
        myscr!.backgroundColor = UIColor.whiteColor()
        self.view .addSubview(myscr!)
        
        mytext = UITextField ()
        mytext!.frame = CGRectMake(10,50,250,20)
        mytext!.text = "My First text field"
        mytext!.backgroundColor = UIColor.grayColor()
        myscr!.addSubview(mytext!)
        
        mylbl = UILabel()
        mylbl!.frame = CGRectMake(10,250,250,30)
        mylbl!.text = "My Label"
        mylbl!.backgroundColor = UIColor.greenColor()
        myscr!.addSubview(mylbl!)
        
        mytext2 = UITextField ()
        mytext2!.frame = CGRectMake(10,450,250,20)
        mytext2!.text = "My Second text field"
        mytext2!.backgroundColor = UIColor.lightGrayColor()
        myscr!.addSubview(mytext2!)
        
        mylbl2 = UILabel()
        mylbl2!.frame = CGRectMake(10,650,250,30)
        mylbl2!.text = "My Second Label"
        mylbl2!.backgroundColor = UIColor.yellowColor()
        myscr!.addSubview(mylbl2!)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // #pragma mark - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}