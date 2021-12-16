//
//  ServiceController.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/15/21.
//

import UIKit

class ServiceController{
    
    static var shared = ServiceController()
    func getproduct(handler: @escaping ([product]) ->Void){
        let urlstring = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
        let urlObj = URL(string: urlstring)!
        
        var task = URLSession.shared.dataTask(with: urlObj){ data, apiresponse, error in
            if let error = error{
                print(error)
                handler([product]())
            }
            else if let correct_data = data{
                do{
                    let decoder = JSONDecoder()
                    let resultFromDecoder = try?
                        decoder.decode([product].self, from: correct_data)
                    handler(resultFromDecoder!)
                    
                }catch{
                    print(error)
                }
            }
        }
        
        task.resume()
        
    }
    
    func getImage(url: String, handler : @escaping (Result<UIImage,Error>) -> Void)
    {
        let urlObj = URL(string: url)!
        
        let task = URLSession.shared.dataTask(with: urlObj){ data, apiresponse, error in
            if let error = error{
                print(error)
                handler(.failure(error))
            }
            else if let correct_data = data{
                let img = UIImage(data: correct_data)
                handler(.success(img!))
            } 
            
        }
        task.resume()
    }
}
