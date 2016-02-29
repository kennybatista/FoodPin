//
//  MapViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/26/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Forward Geocoding: Converting physical addresses into coordinates
        
             
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString("436 beach 72nd street, arverne, ny, 11692", completionHandler: {
            (placemarks, error) in
//            let placemark = CLPlacemark()
//            let coordinate = placemark.location?.coordinate
            
            if error != nil {
                print("Geocode failded with error: \(error?.localizedDescription)")
            } else {
                if placemarks!.count > 0 {
                    let placemark = placemarks![0] 
                    print(placemark.location?.coordinate.latitude);
                    
                    let annotation = MKPointAnnotation()
                    annotation.title = "Kenny'Home"
                    annotation.coordinate = (placemark.location?.coordinate)!
                    
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        })
        
  
            
            
            
            
            
            
            

            
        
        

        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
