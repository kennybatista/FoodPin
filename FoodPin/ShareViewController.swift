//
//  ShareViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/24/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    
    @IBOutlet var backgroundImage : UIImageView!
    
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var twitterButton: UIButton!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var messageButton: UIButton!
    
    func close() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImage.addSubview(blurEffectView)
        
        //Start State
        facebookButton.transform = CGAffineTransformMakeTranslation(0, -500)
        twitterButton.transform = CGAffineTransformMakeTranslation(0, -500)
        
        mailButton.transform = CGAffineTransformMakeTranslation(0, 500)
        messageButton.transform = CGAffineTransformMakeTranslation(0, 500)
    }
    
    
    //End State
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.7, animations:  {
            self.facebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.twitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
            
            self.messageButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.mailButton.transform = CGAffineTransformMakeTranslation(0, 0)
        })
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
