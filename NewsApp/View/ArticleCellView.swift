//
//  ArticleCellView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import SwiftUI

struct ArticleCellView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 10) {
                Text("Title goes Here! and ther is how far ill go")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text("Description goes here: Over teh past few weeks dfkjao oioiu hoi hu ur lej aoi ha ai  ")
                    .lineLimit(3)
                    .font(.system(size: 18, weight: .regular, design: .default))
            }
            
            Image(uiImage: newsThumbnail.load())
                .resizable()
                .frame(width: 140*1.0, height: 140)
                .cornerRadius(8)
                .aspectRatio(contentMode: .fill)
            
        }.padding(.horizontal, 20)
    }
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView()
    }
}
