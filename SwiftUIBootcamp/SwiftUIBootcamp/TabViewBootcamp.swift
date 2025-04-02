//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 03/03/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = ["house.fill", "music.note.list", "person.fill", "globe"]
    
    var body: some View {
        /*
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        */
        
        /*
        TabView {
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
        }
        .tabViewStyle(PageTabViewStyle())
        */
        
        
        
        
        
        TabView (selection: $selectedTab) {
            
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            
            BrowseView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(2)
            
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }.tag(3)
        }
        .accentColor(.red)
         
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 3
                } label: {
                    Text("Go To Profile Tab")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                
            }
        }
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Text("Browse Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            Text("Settings Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

/*
struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Text("Profile Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}
*/
