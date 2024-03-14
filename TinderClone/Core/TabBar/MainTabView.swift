//
//  MainTabBar.swift
//  TinderClone
//
//  Created by Marco Alonso on 12/03/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Inbox View")
                .tabItem { Image(systemName: "bubble") }
                .tag(2)
            
            Text("Profile View")
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
