//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 1/22/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet var restaurantImageView : UIImageView!
    var restaurant : Restaurant!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func close(segue: UIStoryboardSegue) {
        
    }
       

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Will update the image view after the image's data has been passed to the detail.
        self.restaurantImageView!.image = UIImage(named: restaurant.image)
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: self.restaurant.name, style: .Plain, target: nil, action: nil)
        title = self.restaurant.name
      
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! DetailTableViewCell
        cell.backgroundColor = UIColor.clearColor()
        cell.mapButton.hidden = true
        
        
        
        //configure the cell
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.fieldValue.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.fieldValue.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.fieldValue.text = restaurant.location
            cell.mapButton.hidden = false
        case 3:
            cell.fieldLabel.text = "Been Here"
            cell.fieldValue.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.fieldValue.text = ""
        }
        
        return cell
    }
    

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.hidesBarsOnSwipe = false
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return .LightContent
//    }
    

}
