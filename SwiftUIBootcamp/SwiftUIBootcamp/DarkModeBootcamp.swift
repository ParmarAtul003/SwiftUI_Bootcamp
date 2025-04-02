//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 12/03/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20){
                    Text("This color is primary")
                        .font(.title)
                        .foregroundStyle(.primary)
                    
                    Text("This color is secondary")
                        .font(.title)
                        .foregroundStyle(.secondary)
                    
                    Text("This color is black")
                        .font(.title)
                        .foregroundStyle(.black)
                    
                    Text("This color is white")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    Text("This color is red")
                        .font(.title)
                        .foregroundStyle(.red)
                    
                    Text("This color is globally adaptive")
                        .font(.title)
                        .foregroundStyle(Color("CustomColor"))
                        
                    Text("This color is locally adaptive")
                        .font(.title)
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                        
                        
                }
            }
            .navigationTitle(Text("Dark Mode Bootcamp"))
        }
    }
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.light)
}
