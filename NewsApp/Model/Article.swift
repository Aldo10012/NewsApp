//
//  Article.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import Foundation

struct TopHeadlines: Codable, Identifiable {
    var id = UUID()
    let articles: [Article]
    
    enum CodingKeys: String, CodingKey {
        case articles
    }
}

struct Article: Codable, Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let urlToImage: String
    
    enum CodingKeys: String, CodingKey {
        case title, description, urlToImage
    }
    
//    let source: Source
//    let author: String
//    let url: String
//    let publishedAt: String
//    let content: String
}

struct Source: Codable {
    let id: String
    let name: String
}



