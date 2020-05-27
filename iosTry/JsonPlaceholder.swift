//
//  JsonPlaceholder.swift
//  iosTry
//
//  Created by philips on 26/05/20.
//  Copyright © 2020 philips. All rights reserved.
//

import Foundation

struct JsonPlaceholder{
    let url = "https://jsonplaceholder.typicode.com/posts"
    
    func getUrl() -> String{
        return url;
    }
    
    func performRequest(url1: String, completionHandler: @escaping (Result<Data, Error>) -> Void){
        let url = URL(string: url1 );
        let session = URLSession(configuration: .default);
        let tast = session.dataTask(with: url!) { data, _, error in
            guard let data = data else {
                completionHandler(.failure(error!))
                return
            }
                completionHandler(.success(data))
        }
        tast.resume();
        
    }
  
    
    func parseJsonREsponse(resData : Data, completionHandler: @escaping (Result<Array<posts>, Error>) -> Void){
        let jsondecode = JSONDecoder()
        do{
            let outputdata =  try jsondecode.decode(Array<posts>.self,from:resData)
           completionHandler(.success(outputdata))
        }catch{
           completionHandler(.failure(error))
            
        }
        
    }
    
}
