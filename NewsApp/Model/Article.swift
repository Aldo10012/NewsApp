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
}

struct Article: Codable, Identifiable {
    var id = UUID()
    
    let title: String
    let description: String
    let urlToImage: String
    
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


let tempData = TopHeadlines(articles: [exampleArticle1, exampleArticle2, exampleArticle3, exampleArticle1, exampleArticle2, exampleArticle3])


let exampleArticle1 = Article(
    title: "Alex Jones must pay damages to Sandy Hook families after calling shooting a 'giant hoax,' judge rules - The Washington Post",
    description: " Texas judge issued default judgments against Jones and Infowars after the far-right personality did not comply with court orders to give information in a pair of 2018 lawsuits by the families of two children killed in the 2012 massacre in Newtown, Conn.",
    urlToImage: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/HJ6SU5QYJYI6VAGW2DFHABZHH4.jpg&w=1440"
)

let exampleArticle2 = Article(
    title: "Debt ceiling review at White House concluded that there were few options. - The Washington Post",
    description: "Despite extensive review, White House says only option remains for Congress to pass legislation to avert calamity",
    urlToImage: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/PEPPH4PPUFBQ7CILLOR36YNPVA.jpg&w=1440"
)

let exampleArticle3 = Article(
    title: "zy Media chairman quits after bombshell NYT report - BBC News",
    description: "illionaire Marc Lasry steps down amid reports the US firm's co-founder deceived potential investors.",
    urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/16D1C/production/_120786439_gettyimages-1201775585.jpg"
)
