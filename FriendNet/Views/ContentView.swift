//
//  ContentView.swift
//  FriendNet
//
//  Created by Yvonne Lee on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            
            
            ChartsView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
