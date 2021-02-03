//
//  QuotesView.swift
//  quotes-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import SwiftUI

struct QuotesView: View {
    
    var quotesList:Person
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                
                // MARK: Image
                Image(quotesList.image2)
                    .resizable()
                    .scaledToFit()
                
                // MARK: Name
                VStack {
                    Text(quotesList.name)
                        .font(.headline)
                        .kerning(3)
                    Divider()
                    
                    // MARK: Quotes
                    ForEach(quotesList.quotes, id:\.self) { item in
                        Text("- " + item)
                            .padding()
                    }
                }
            }
        }
    }
}

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesModel()
        
        QuotesView(quotesList: model.quotes[0])
    }
}
