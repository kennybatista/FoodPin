//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/22/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView : UIImageView!
    @IBOutlet weak var dialogView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        
        //Start state
        dialogView.transform = CGAffineTransformMakeScale(0.0, 0.0)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        
        UIView.animateWithDuration(0.7, animations:  {
            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
        })
        
        
//        UIView.animateWithDuration(0.7, usingSpringWithDamping: 0.5, initialVelocity: 0.5, animations:  {
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//        })
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
