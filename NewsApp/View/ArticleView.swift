//
//  ArticleView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import SwiftUI

struct ArticleView: View {
    @State var url: String
    
    var body: some View {
        Webview(url: self.url)
        
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(url: "https://google.com")
    }
}
