//
//  LandmarkList.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import SwiftUI

struct LandmarkList: View {
    
    @State var isTogggle = false
    
    var filteredLandmarks: [Landmark]
    {
        landmarks.filter{landmark in
            if isTogggle
            {
                return landmark.isFavorite
            }
            else
            {
                return true
            }
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $isTogggle)
                {
                    Text("Favorites only ")
                }
                ForEach(filteredLandmarks) { landmark in
                
                    NavigationLink{
                        ContentView(landmark: landmark)
                    }
                    label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
