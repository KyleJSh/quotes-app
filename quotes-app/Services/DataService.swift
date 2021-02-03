//
//  DataService.swift
//  quotes-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Person] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Person]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                
                let quotesData = try decoder.decode([Person].self, from: data)
                
                for q in quotesData {
                    q.id = UUID()
                }
                return quotesData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Person]()
    }
}
