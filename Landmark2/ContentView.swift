//
//  ContentView.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    let landmark: Landmark
    
    var body: some View {
        VStack{
            ScrollView{
                
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                CircularImage(image: landmark.image)
                    .offset(y: -150)
                    .padding(.bottom, -150)
                
                
                HStack{
                    Text(landmark.name)
                        .font(.largeTitle)
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                }
                .padding()
                
                Divider()
                
                HStack{
                    Text("About \(landmark.name)")
                    Spacer()
                }
                .padding()
                HStack{
                    Text(landmark.description)
                    Spacer()
                }
                .padding()
                Spacer()
            }
        }
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarks[4])
    }
}
