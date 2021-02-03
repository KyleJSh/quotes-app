//
//  ContentView.swift
//  quotes-app
//
//  Created by Kyle Sherrington on 2021-02-03.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuotesModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                ForEach(model.quotes) { q in
                    
                    NavigationLink(
                        destination: QuotesView(quotesList:q),
                        label:{
                        
                        // MARK: Row Item
                        VStack {
                            
                            ZStack {
                                Image(q.image)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(5)
                                Text(q.name)
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                    .kerning(2)
                                
                            }
                            .padding(.all)
                        }
                    })
                }
                .navigationBarTitle("Famous Quotes")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
