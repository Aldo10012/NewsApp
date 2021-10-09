//
//  ContentView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import SwiftUI

struct HeadlinesView: View {
    
    @ObservedObject var viewModel = HeadlinesViewModel()
//    let temp = tempData
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(viewModel.articles) { article in
                        
                        NavigationLink(destination: ArticleView(url: article.url)) {
                            ArticleCellView(article: article)
                        }
                        
                    }
                }
            }.navigationTitle("Headlines")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesView()
    }
}
