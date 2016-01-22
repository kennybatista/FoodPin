//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 1/21/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    var restaurantName : String!
    
    @IBOutlet var restaurantImageView: UIImageView!
    var restaurantImage : String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.restaurantImageView.image = UIImage(named: restaurantImage)
        self.restaurantNameLabel.text = restaurantName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
   
    

}
