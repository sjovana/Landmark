//
//  Landmark.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Identifiable, Decodable
{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    private var imageName: String
    private var coordinates: Coordinates
    private var category: String
    
    
    var image: Image{
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D
    {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Decodable {
        let longitude, latitude: Double
    }
}
