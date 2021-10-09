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
                    TextField("Search", text: $searchField)
                        .submitLabel(.search)
                    
                    Button(action: {}) {
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
}

struct SearchQueryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchQueryView()
    }
}
