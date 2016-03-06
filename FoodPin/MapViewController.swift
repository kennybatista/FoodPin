//
//  MapViewController.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/26/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.mapView.delegate = self

        // Do any additional setup after loading the view.
        //Forward Geocoding: Converting physical addresses into coordinates

        
        
        //Instance of CLGeocoder, allows us to forward or reverse geocode
        let geoCoder = CLGeocoder()
        //Initializing a forward geocode request
        geoCoder.geocodeAddressString(restaurant.location) { (placemarks, error) -> Void in
            
            //if there is an error
            if error != nil {
                print(error)
                return
            } else
                //if there is a placemark ( greater than 0 says that there's a placemark in the array)
                if placemarks?.count > 0 {
                    //storing the first placemark in the array in a container( there's usually only one placemark object)
                    let placemark = placemarks![0]
                    
                    //Annotation
                    let annotation = MKPointAnnotation()
                    annotation.title = self.restaurant.name
                    annotation.subtitle = self.restaurant.type
                    //where to show the annotation
                    annotation.coordinate = (placemark.location?.coordinate)!
                    
                    //show the annotation
                    self.mapView.showAnnotations([annotation], animated: true)
                    //auto select the annotation
                    self.mapView.selectAnnotation(annotation, animated: true)
            }
        }
        
        
 
        
    }
    
        



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
