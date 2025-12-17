//
//  CustomTabBar.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 16/12/25.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MusicPage()
                .tabItem {
                    Label("Music", systemImage: "music.note")
                }
            SignIn()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                
        }
    }
}

#Preview {
    CustomTabBar()
}
