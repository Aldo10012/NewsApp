//
//  SearchQueryView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/8/21.
//

import SwiftUI

struct SearchQueryView: View {
    
    @State var searchField = ""
    @ObservedObject var viewModel = SearchQueryViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Search Field
                HStack {
                    TextField("Search", text: $searchField, onCommit: search)
                        .submitLabel(.search)
                    
                    Button(action: search ) {
                        Text("Search")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                    }.background(.red).cornerRadius(8)
                }
                
                
                Spacer()
                    
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .navigationTitle("Search")
            
        }
    }
    
    func search() {
        print(searchField)
        
        viewModel.getAllArticles(query: searchField) { result in
            switch result {
            case let .success(articles):
                viewModel.articles = articles
                print(viewModel.articles.count)
            case let .failure(error):
                print(error)
            }
        }
        
        print("search end")
    }
}

struct SearchQueryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchQueryView()
    }
}
