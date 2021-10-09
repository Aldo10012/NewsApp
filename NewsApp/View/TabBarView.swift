//
//  TabBarView.swift
//  NewsApp
//
//  Created by Alberto Dominguez on 10/8/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HeadlinesView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Headlines")
                }
            
            SearchQueryView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }.accentColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
