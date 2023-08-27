//
//  CategoryView.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 17.12.22..
//

import SwiftUI

struct CategoryView: View {
    let groupedLanmarks = categorizedLandmarks()
    var body: some View {
        NavigationView
        {
            List(Landmark.Categories.allCases, id: \.self){ key in
                Text(key.rawValue)
            }
                .navigationTitle("Featured")
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
