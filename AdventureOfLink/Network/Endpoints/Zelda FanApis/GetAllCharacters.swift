//
//  GetAllCharacters.swift
//  AdventureOfLink
//
//  Created by Erwin Warkentin on 07.06.23.
//

import Foundation
import EWNetworking

struct GetAllCharacters: EndpointType {
    typealias Response = Characters
    
    var baseURL: URL {
        let urlString = "https://zelda.fanapis.com/api/characters?limit=100"
        
        guard let url = URL(string: urlString) else {
            fatalError("URL string is not a valid url.")
        }
        return url
    }
    
    var path: String = "api/characters"
    
    var httpMethod: HTTPMethod = .get
    
    var headers: [String : String] = ["limit": "20"]
    
}
