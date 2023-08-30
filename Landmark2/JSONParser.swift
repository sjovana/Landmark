//
//  JSONParser.swift
//  Landmark2
//
//  Created by Jovana Šubarić on 13.12.22..
//

import Foundation

let landmarks: [Landmark] = load("landmarkData")

func load <T: Decodable> (_ filename: String) -> T
{
    let data: Data
        
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else
    {
        fatalError()
    }
    do{
        data=try Data(contentsOf: file)
    }catch{
        fatalError()
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError()
    }
}

