//
//  ArticleCellView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import SwiftUI
import KingfisherSwiftUI

struct ArticleCellView: View {
    
    let article: Article
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 10) {
                Text(article.title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text(article.description ?? "")
                    .font(.system(size: 18, weight: .regular, design: .default))
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    
            }
            .foregroundColor(.black)
            
            if let urlImage = article.urlToImage {
                KFImage(URL(string: urlImage))
                    .resizable()
                    .frame(width: 140*1.0, height: 140)
                    .cornerRadius(8)
                    .aspectRatio(contentMode: .fill)
            }
            
            
        }.padding(.horizontal, 20)
    }
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView(article: exampleArticle1)
    }
}

