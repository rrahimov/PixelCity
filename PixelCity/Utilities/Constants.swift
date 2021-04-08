//
//  Constants.swift
//  PixelCity
//
//  Created by Ruhullah Rahimov on 03.04.21.
//

import Foundation

let apiKey = "43c9ccf9861feabbc2e4937a1d937162"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=3&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
}
