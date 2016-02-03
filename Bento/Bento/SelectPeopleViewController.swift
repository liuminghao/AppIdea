//
//  SelectPeopleViewController.swift
//  Bento
//
//  Created by Minghao Liu on 2/2/16.
//  Copyright © 2016 Bento Co. All rights reserved.
//

import UIKit

class SelectPeopleViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var peopleCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //   --------- other cell stuff, stolen -----------
    //   --------- NEED TO FIGURE THIS OUT ------------
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        print ("This gets called")
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Cell \(indexPath.row) selected")
    }
    
    
    //   -------- BUTTON CLICK -----------------

    @IBAction func addPerson(sender: UIButton) {
        getName()
    }
    
    //    --------- CREATE CELL --------------
    func createPerson(name: String){
        print("Person created ", name)
    }
    
    //    --------- ALERT FOR NAME ------------
    func getName(){
        var tField: UITextField!
        func configurationTextField(textField: UITextField!){
            textField.placeholder = "Enter name"
            tField = textField
        }
        func handleCancel(alertView: UIAlertAction!) {
            print("Cancelled !!")
        }
        
        var alert = UIAlertController(title: "Enter Name", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler(configurationTextField)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler:{ (UIAlertAction)in
            self.createPerson(tField.text!)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler:handleCancel))
        self.presentViewController(alert, animated: true, completion: {
            print("completion block")
        })
    }
}
