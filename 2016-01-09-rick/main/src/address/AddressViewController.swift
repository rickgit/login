//
//  AddressViewController.swift
//  
//
//  Created by Anshu Wang on 16/2/5.
//
//

import UIKit

class AddressViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var dataTableView: UITableView!
    var datas:NSMutableArray!=NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTableView.dataSource=self;
        dataTableView.delegate=self;
        datas.addObject("天0")
        datas.addObject("天1")
        datas.addObject("天2")
        datas.addObject("天3")
        datas.addObject("天4")
        datas.addObject("天5")
        datas.addObject("天6")
        
        setNavigationTitle("通讯录")
        setNavigationLeft("img")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //    MARK: - tableDatasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return datas.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
 
        var cell:UITableViewCell
        if(indexPath.row==0){
            cell=tableView.dequeueReusableCellWithIdentifier("addressFixCell") as!UITableViewCell
            var label:UILabel=cell.viewWithTag(10) as!UILabel
            label.text="Index \(indexPath.row) \(datas.objectAtIndex(indexPath.row))"
        }else{
            cell=tableView.dequeueReusableCellWithIdentifier("addressDataCell")as!UITableViewCell
            var label:UILabel=cell.viewWithTag(1) as!UILabel
            label.text="Index \(indexPath.row) \(datas.objectAtIndex(indexPath.row))"
        }
//        static NSString *CellIdentifier = @"Cell";
//        UITableViewCell *cell = (UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//        if (cell == nil) {
//            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
//        }
        return cell
    }
    //MARK: Called after the user changes the selection.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        NSLog("Log \(indexPath.row)")
        self.hidesBottomBarWhenPushed=true
        performSegueWithIdentifier("addressShowDetail", sender: indexPath.row)
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
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
