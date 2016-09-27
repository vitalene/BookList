
import Foundation
import CoreData

class EbayAPI: NSObject {
    
    struct EbayAPI {
        static let serviceURL: URL = URL(string:"http://de-coding-test.s3.amazonaws.com/books.json")!
        
    }
    
    enum BooksResult {
        case success([Book])
        case failure(Error)
    }
    
    enum EbayError : Error {
        case inValidJSONData
    }
    
    class func makeTheDataObject (_ data: Data, inContext context: NSManagedObjectContext) -> BooksResult {
        
        do {
            let jsonObject: Any = try
                JSONSerialization.jsonObject(with: data, options: [])
            
            guard let
                jsonDictionary = jsonObject as? [AnyHashable: Any],
                let books = jsonDictionary["books"] as? [String:AnyObject],
                let booksArray = books["book"] as? [[String:AnyObject]]
                else {
                    print("We had an error")
                 
                   return .failure(EbayError.inValidJSONData)
            }
        } catch let error {
            return .failure(error)
        }
        
        
    }
    
    

}



func bookFromJSONObject(_ json: [String : AnyObject]) -> Book {
    
//    let jsonObject = JSONSerialization.jsonObject(with: json, options: [])
    
    let title = json["title"] as? String
    let imgURL = json["imageURL"] as? String
}




class Book {
    
}
