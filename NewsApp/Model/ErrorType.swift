//
//  ErrorType.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/1/21.
//

import Foundation

enum Result<T> {
   case success(T)
   case failure(Error)
}

enum EndPointError: Error {
    case couldNotParse
    case noData
}
