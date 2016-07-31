//
//  ViewController.swift
//  ContactsHomework
//
//  Created by YeYixin on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

var indexrow:Int?

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    var contact = DataManager.sharedManager.getContacts()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(actOnNotification), name: notification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contact.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = UITableViewCell();
        
        cell.textLabel?.text = self.contact[indexPath.row].firstname!+" "+self.contact[indexPath.row].lastname!;
        
        indexrow = indexPath.row
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        indexrow = indexPath.row
        
        self.performSegueWithIdentifier("DetailedSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let index = indexrow {
            if let svc = segue.destinationViewController as? DetailedViewController {
                svc.toPass = contact[index]
            }
        }
    }
    
    func actOnNotification(msg:NSNotification) {
        if let userInfo = msg.userInfo as? [String : String] {
            if userInfo["Contact"] != nil {
                self.tableView.reloadData()
            }
        }
    }

}

