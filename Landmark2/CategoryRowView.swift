//
//  CategoryRowView.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 17.12.22..
//

import SwiftUI

struct CategoryRowView: View {
    let categoryName: String
    let landmarks: [Landmark]
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(categoryName)
                .font(.headline)
                .padding(.bottom, 20)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(landmarks) { landmark in
                        Text(landmark.name)
                    }
                }}
        }
    }
}


struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(
            categoryName: landmarks[0].categoryEnum.rawValue,
            landmarks: Array(landmarks.prefix(9))
            )
    }
}
