import Foundation
import EWNetworking

struct GetAllCharakters: EndpointType {
    typealias Response = Charakters
    
    var page: Int
    var name: String = ""
    var baseURL: URL {
        let urlString = "https://zelda.fanapis.com/"
        
        guard let url = URL(string: urlString) else {
            fatalError("URL string is not a valid url.")
        }
        return url
    }
    var path: String = "api/characters"
    var httpMethod: HTTPMethod = .get
    var parameters: [String : String] { ["limit": "20", "page": "\(self.page)"] }
}
