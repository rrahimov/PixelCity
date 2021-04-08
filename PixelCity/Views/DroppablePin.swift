//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Ruhullah Rahimov on 28.03.21.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    //"coordinate cannot be properly set unless it's a dynamic variable."
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
        //bu ne ucundur? "that's going to allow us to use this as an initializer for our custom pin."
    }
}
