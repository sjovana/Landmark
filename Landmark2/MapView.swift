//
//  MapView.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
        
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                focusOnRegion(coordinate)
            }
    }
    
    private func focusOnRegion(_ coordinate: CLLocationCoordinate2D)
    {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
