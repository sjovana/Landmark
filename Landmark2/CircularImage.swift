//
//  CircularImage.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import SwiftUI

struct CircularImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.gray,lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: landmarks[6].image)
    }
}
