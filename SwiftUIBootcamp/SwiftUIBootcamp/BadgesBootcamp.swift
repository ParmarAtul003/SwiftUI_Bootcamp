//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

//Badge is only can appy on
// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .badge("99+")
            
            MusicView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Music")
                }
                .badge(5)
            
            Color.yellow
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .badge("New")
        }
    }
}

struct MusicView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            List {
                Text("Song 1")
                    .badge("New")
                Text("Song 2")
                    .badge(5)
                Text("Song 3")
            }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
