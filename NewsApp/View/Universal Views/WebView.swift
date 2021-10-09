//
//  WebView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/4/21.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
        
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    
    func updateUIView(_ uiView: Webview.UIViewType, context: UIViewRepresentableContext<Webview> ) {
        
    }
    
}
