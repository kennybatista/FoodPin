//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 1/22/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var restaurantImageView : UIImageView!
    var restaurantImage : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Will update the image view after the image's data has been passed to the detail.
        self.restaurantImageView.image = UIImage(named: restaurantImage)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
