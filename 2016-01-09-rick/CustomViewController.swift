//
//  CustomViewController.swift
//  
//
//  Created by Anshu Wang on 16/2/22.
//
//

import UIKit

class CustomViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableviewCustom: UITableView!
    
    let datas=["","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewCustom.dataSource=self
        tableviewCustom.delegate=self
        setNavigationTitle("通讯录")
        setNavigationLeft("img")
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
//        let cell=tableView.dequeueReusableCellWithIdentifier("addressFixCell") as!UITableViewCell
//        return cell
        var cell:UITableViewCell
        if(indexPath.row==0){
            cell=tableView.dequeueReusableCellWithIdentifier("addressFixCell") as!UITableViewCell
            var label:UILabel=cell.viewWithTag(10) as!UILabel
            label.text="Index \(indexPath.row) "
        }else{
            cell=tableView.dequeueReusableCellWithIdentifier("addressDataCell")as!UITableViewCell
            var label:UILabel=cell.viewWithTag(1) as!UILabel
            label.text="Index \(indexPath.row)"
        }
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        NSLog("Log \(indexPath.row)")
        self.hidesBottomBarWhenPushed=true
        performSegueWithIdentifier("addressShowDetail", sender: indexPath.row)
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    } 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
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
