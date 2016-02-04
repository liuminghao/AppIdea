//
//  ItemViewController.swift
//  Bento
//
//  Created by Roseanna on 2/3/16.
//  Copyright © 2016 Bento Co. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var itemTableView: UITableView!
    
    var cellCount: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTableView.dataSource = self
        itemTableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(sender: UIButton) {
        print("Add item")
        cellCount = cellCount + 1
        itemTableView.reloadData()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("table view 1")
        print (cellCount)
        return cellCount
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("table view 2")
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ItemTableViewCell
//        cell.backgroundColor = UIColor.redColor()
        return cell
    }

    
//          MIGHT NEED LATER
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
