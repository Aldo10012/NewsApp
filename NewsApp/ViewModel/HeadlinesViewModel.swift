//
//  HeadlinesViewModel.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import Foundation

class HeadlinesViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    let baseURL = "https://newsapi.org/v2/top-headlines"
    let apiKey = "4c7a6c8c17984d88a0d80ee9f13198dd"
    let urlSession = URLSession.shared
    
    init() {
        getTopHeadlines { result in
            switch result {
            case let .success(articles):
                self.articles = articles
            case let .failure(error):
                print(error)
            }
        }
    }
    
    func getTopHeadlines(completion: @escaping (Result<[Article]>) -> () ) {
        let fullURL = setParameters(country: "us")
        guard let url = URL(string: fullURL) else {return}
        let request = URLRequest(url: url)
        
        urlSession.dataTask(with: request) { data, responce, error in
            if let error = error {
                return completion(Result.failure(error))
            }
            
            guard let data = data else {
                return completion(Result.failure(EndPointError.noData))
            }
            
            guard let headlines = try? JSONDecoder().decode(TopHeadlines.self, from: data) else {
                return completion(Result.failure(EndPointError.couldNotParse))
            }
            
            DispatchQueue.main.sync {
                self.articles = headlines.articles
            }
            
            
        }.resume()
    }
    
    
    func setParameters(country: String) -> String {
        /// only takes 2 parameters: country & apiKey
        return "\(baseURL)?country=\(country)&apiKey=\(apiKey)"
    }
    
    
    
}
