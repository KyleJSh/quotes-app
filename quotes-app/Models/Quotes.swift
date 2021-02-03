//
//  Quotes.swift
//  quotes-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class Person: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var image:String
    var image2:String
    var quotes:[String]
}
