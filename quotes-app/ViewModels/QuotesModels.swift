//
//  QuotesModels.swift
//  quotes-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import Foundation

class QuotesModel:ObservableObject {
    
    @Published var quotes = [Person]()
    
    init() {
        
        self.quotes = DataService.getLocalData()
    }
}
