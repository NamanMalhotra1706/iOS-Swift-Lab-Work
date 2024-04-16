import UIKit

var URLComponent = URLComponents(string:"https://itunes.apple.com/search")!

URLComponent.queryItems=[
    "term":"arijit",
    "limit":"25"
].map{URLQueryItem(name: $0.key, value: $0.value)}


Task{
    let(data,response) = try await URLSession.shared.data(from: URLComponent.url!)
    
    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200{
        //print(data)
        
        if let string = String(data:data, encoding: .utf8){
            print(string)
        }
    }
    else{
        // error handling
    }
}
