//
//  GetAllCharacters.swift
//  AdventureOfLink
//
//  Created by Erwin Warkentin on 07.06.23.
//

import Foundation
import EasyNetwork

struct GetAllCharacters: EndPointType {
    typealias Response = Characters
    
    var baseURL: URL {
        let urlString = "https://zelda.fanapis.com/api"

        guard let url = URL(string: urlString) else {
            fatalError("URL string is not a valid url.")
        }

        return url
    }
    
    var path: String {
        let pathString = "characters"
        return pathString
    }
    
    var httpMethod: HTTPMethod { .get }
    
    var task: HTTPTask { .requestParameters(bodyParameter: <#T##HTTPBody?#>, bodyEncoding: <#T##ParameterEncoding#>, urlParameters: <#T##Parameters?#>) }
    
    var httpBody: HTTPBody?
    
    var headers: HTTPHeaders?
    
    var urlQuery: Parameters?
    
    
}
