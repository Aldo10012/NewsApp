//
//  SearchQueryViewModel.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/8/21.
//

import Foundation

class SearchQueryViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    let baseURL = "https://newsapi.org/v2/everything"
    let apiKey = "4c7a6c8c17984d88a0d80ee9f13198dd"
    let urlSession = URLSession.shared
    
    init() {
        
    }
    
    func getAllArticles(query: String, completion: @escaping (Result<[Article]>) -> () ) {
        let fullURL = setParameters(query)
        
        guard let url = URL(string: fullURL) else {return}
        let request = URLRequest(url: url)
        
        urlSession.dataTask(with: request) { data, responce, error in
            if let error = error {
                return completion(Result.failure(error))
            }
            
            guard let data = data else {
                return completion(Result.failure(EndPointError.noData))
            }
            
            do {
                let headlines = try JSONDecoder().decode(TopHeadlines.self, from: data)
                
                DispatchQueue.main.sync {
                    self.articles = headlines.articles
                    completion(Result.success(headlines.articles))
                }
                
            } catch {
                completion(Result.failure(EndPointError.couldNotParse))
                print(error)
            }
                    
            
        }.resume()
    }
    
    
    func setParameters(_ q: String) -> String {
        /// only takes 2 parameters: country & apiKey
        return "\(baseURL)?q=\(q)&apiKey=\(apiKey)"
    }
    
    
    
}
