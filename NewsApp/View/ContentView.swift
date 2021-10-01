//
//  ContentView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import SwiftUI

struct ContentView: View {
    
    
    let temp = tempData
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(temp.articles) { article in
                        ArticleCellView(article: article)
                    }
                }
            }.navigationTitle("Articles")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





let newsThumbnail = "https://us.123rf.com/450wm/alhovik/alhovik1709/alhovik170900031/86481591-breaking-news-background-world-global-tv-news-banner-design.jpg?ver=6"

extension String {
    func load() -> UIImage {
        // try catch block
        do{
            // convert string to URL
            guard let url = URL(string: self) else {
                // return empty image if url is invalid
                return UIImage()
            }
            
            // convert url to data
            let data: Data = try Data(contentsOf: url )
            
            // create UIImage object from Data
            // and optional value if image in URL does not exist
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            
        }
        
        return UIImage()
    }
}


