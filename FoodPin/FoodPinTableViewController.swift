//
//  FoodPinTableViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 1/16/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class FoodPinTableViewController: UITableViewController {
    
    @IBAction func undwindSegue(segue: UIStoryboardSegue){
        
    }
    
    var restaurants:[Restaurant] = []
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.hidesBarsOnSwipe = true
    }
        

     override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
            
            tableView.estimatedRowHeight = 250.0
            tableView.rowHeight = 150
        
         }


//    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.restaurants.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        

        // Configure the cell...
        let restaurant = restaurants[indexPath.row]
        cell.nameLabel?.text = restaurant.name
        cell.imageContainer?.image = UIImage(data: restaurant.image)
        cell.locationLabel?.text = restaurant.location
        cell.typeLabel?.text = restaurant.type
        
            
            
        //Circular/smooth edge images
//        cell.imageContainer.layer.cornerRadius = cell.imageContainer.frame.size.width / 2
        cell.imageContainer.layer.cornerRadius = 10.0
        cell.imageContainer.clipsToBounds = true
        

        
//        cell.accesoryType = restaurantIsVisited[indexPath.row] ? .Checkmark : .None
        
        return cell
    }
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        //Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do", preferredStyle: .ActionSheet)
//        
//        //Add actions to the menu
//        let CancelingAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
//        optionMenu.addAction(CancelingAction)
//        
//        //The call action
//        
//        let callActionHandler = {(action:UIAlertAction!) -> Void in
//        let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available is not available yet. Please try again later", preferredStyle: .Alert)
//        alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//        self.presentViewController(alertMessage, animated: true, completion: nil)}
//        
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(restaurantNames[indexPath.row])", style: UIAlertActionStyle.Default, handler: callActionHandler)
//        optionMenu.addAction(callAction)
//        
//        //I've been here action
//        let isVisitedAction = UIAlertAction(title: "I've been here", style: .Default, handler: {
//            (action: UIAlertAction!) -> Void in
//            
//            let cell = tableView.cellForRowAtIndexPath(indexPath)
//            cell?.accessoryType = .Checkmark
//            tableView.deselectRowAtIndexPath(indexPath, animated: false)
//            
//            self.restaurantIsVisited[indexPath.row] = true
//        })
//        optionMenu.addAction(isVisitedAction)
//        
//        
//        
//        
//        //Display the menu
//        self.presentViewController(optionMenu, animated: true, completion: nil)
//    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            //Delete the row from the data source (model)
            self.restaurants.removeAtIndex(indexPath.row)
            
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Middle)
        }
        
//        print("Total item: \(self.restaurants[indexPath.row].name)")
//        for name in restaurants[indexPath.row].name {
//            print(name)
//        }
        
        
        
        func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath:
            NSIndexPath) -> [AnyObject] {
            let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title:
            "Share", handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            136
            let shareMenu = UIAlertController(title: nil, message: "Share using",
                preferredStyle: .ActionSheet)
            let twitterAction = UIAlertAction(title: "Twitter", style:
                UIAlertActionStyle.Default, handler: nil)
            let facebookAction = UIAlertAction(title: "Facebook", style:
                UIAlertActionStyle.Default, handler: nil)
            let emailAction = UIAlertAction(title: "Email", style: UIAlertActionStyle.Default,
                handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel,
                handler: nil)
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(facebookAction)
            shareMenu.addAction(emailAction)
            shareMenu.addAction(cancelAction)
            self.presentViewController(shareMenu, animated: true, completion: nil)
            } )
            let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default,
                title: "Delete",handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
                // Delete the row from the data source
                self.restaurants.removeAtIndex(indexPath.row)
                self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
                } )
            return [deleteAction, shareAction]
        }
        
        
        
    }
    
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    
    
    //PrepareForSegue pseudocode
    //1. override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){} -- in charge of passing the data from a to b
    //2. if segue.identifier == "showRestaurantDetail" {} -- if this segue exists do this
    //3. select the path of where the data is
    //4. 
    
    

    
    
    // Through this segue, pass the data in this controller to that controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! DetailViewController
                destinationController.restaurant = self.restaurants[indexPath.row]
            
            }
        }
    }
    
    
    

}
