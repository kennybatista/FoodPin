//
//  FoodPinTableViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 1/16/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class FoodPinTableViewController: UITableViewController {
    
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong",image: "cafedeadend.jpg", isVisited: false),
        
        Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei.jpg",isVisited: false),
        
        Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image:"teakha.jpg", isVisited: false),
        
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong",image: "cafeloisl.jpg", isVisited: false),
        
        Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image:"petiteoyster.jpg", isVisited: false),
        
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image:"forkeerestaurant.jpg", isVisited: false),
        
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier.jpg", isVisited: false),
        
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image:"bourkestreetbakery.jpg", isVisited: false),
        
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image:"haighschocolate.jpg", isVisited: false),
        
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney",image: "palominoespresso.jpg", isVisited: false),
        
        Restaurant(name: "Upstate", type: "American", location: "New York", image:"upstate.jpg", isVisited: false),
        
        Restaurant(name: "Traif", type: "American", location: "New York", image: "traif.jpg",isVisited: false),
        
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "NewYork", image: "grahamavenuemeats.jpg", isVisited: false),
            
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image:"wafflewolf.jpg", isVisited: false),
            
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image:"fiveleaves.jpg", isVisited: false),
            
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image:"cafelore.jpg", isVisited: false),
            
        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image:"confessional.jpg", isVisited: false),
            
        Restaurant(name: "Barrafina", type: "Spanish", location: "London", image:"barrafina.jpg", isVisited: false),
            
        Restaurant(name: "Donostia", type: "Spanish", location: "London", image:"donostia.jpg", isVisited: false),
            
        Restaurant(name: "Royal Oak", type: "British", location: "London", image:"royaloak.jpg", isVisited: false),
            
        Restaurant(name: "Thai Cafe", type: "Thai", location: "London", image: "thaicafe.jpg",isVisited: false)
        ]
    
        

     override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        cell.imageContainer?.image = UIImage(imageLiteral: restaurant.image)
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

    
    // MARK: - Navigation

////     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        if segue.identifier == "showRestaurantDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow{
//                let destinationController = segue.destinationViewController as! DetailViewController
//                destinationController.restaurantImage = self.restaurantImages[indexPath.row]
//                
//            }
//        }
//        // Pass the selected object to the new view controller.
//    }
    
    
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
                destinationController.restaurantImage = self.restaurants[indexPath.row].image
                destinationController.theDetailNameLabel = self.restaurants[indexPath.row].name
                destinationController.theDetailLocationLabel = self.restaurants[indexPath.row].location
                destinationController.theDetailTypeLabel = self.restaurants[indexPath.row].type
            }
        }
    }
    
    
    

}
