//
//  AddTableViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/24/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit
import CoreData

class AddTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    
    

    
    
    //didSelectRowAtIndexPath: allows us to select cell from a tableView
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //indexPath.row : allows us to select cells, in our case we're selecting the first cell
        if indexPath.row == 0 {
            //If the photo library is available
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
                //instance of the controller, allows us to use it's methods
                let imagePicker = UIImagePickerController()
                //where to get the image from
                imagePicker.sourceType = .PhotoLibrary
                imagePicker.editing = false
                
                //Present the controller
                self.presentViewController(imagePicker, animated: true, completion: nil)
                
                //who will notify the image picker that something was picked
                imagePicker.delegate = self
            }
        }
        //will deselect cells as soon as I select it, makes the tableview experience feel better
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
    //this function comes from the UIImagePickerController, allowing us to do something after selecting an image
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        //store the selected image inside the image view
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        //Dismiss the controller
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    //MARK: SAVE SECTION
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var typeTextField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBAction func yesButton(sender: UIButton) {
        sender.backgroundColor = UIColor.grayColor()
        
        
    }
    
    @IBAction func noButton(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
    }
    
    //save button
    @IBAction func saveButton(sender: AnyObject) {
        
        let nameTextFieldContainer = nameTextField.text
        let typeTextFieldContainer = typeTextField.text
        let locationTextFieldContainer = locationTextField.text
        
        
        if nameTextFieldContainer == "" || typeTextFieldContainer == "" || locationTextFieldContainer == "" {
            
            let alert = UIAlertController(title: "Oops", message: "Please fill out all fields", preferredStyle: .Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        } else {
            print("Name : \(nameTextFieldContainer!)")
            print("Type : \(typeTextFieldContainer!)")
            print("Location: \(locationTextFieldContainer!)")
            
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        
        // If all fields are correctly filled in, extract the field value
        // Create Restaurant Object and save to data store
//        if let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext {
//            
//            restaurant = NSEntityDescription.insertNewObjectForEntityForName("Restaurant",
//                inManagedObjectContext: managedObjectContext) as! Restaurant
//            restaurant.name = nameTextField.text
//            restaurant.type = typeTextField.text
//            restaurant.location = locationTextField.text
//            restaurant.image = UIImagePNGRepresentation(imageView.image!)
//          
//            //            restaurant.isVisited = NSNumber.convertFromBooleanLiteral(isVisited)
//            
//            //            var e: NSError?
//            //            if managedObjectContext.save() != true {
//            //                print("insert error: \(e!.localizedDescription)")
//            //                return
//            //            }
//        }
//        
//        // Execute the unwind segue and go back to the home screen
//        performSegueWithIdentifier("unwindToHomeScreen", sender: self)
//    }
    }
    
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
