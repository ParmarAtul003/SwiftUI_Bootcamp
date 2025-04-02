//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    
                    TextField("Placeholder...", text: .constant(""))
                        
                    ForEach(0..<20) { _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                            .foregroundStyle(.red)
                    }
                    
                    Text("Hello, World!")
                        .font(.largeTitle)
                }
                
                
                
            }
            .navigationTitle("Toolbar Bootcamp")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
//                    HStack {
//                        Image(systemName: "trash.fill")
                        Image(systemName: "gear")
//                    }
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                }
                
//                ToolbarItem(placement: .principal) {
//                    Image(systemName: "house")
//                }
            }
//            .navigationBarHidden(true)
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("screen 1") {
                    paths.append("Screen 1")
                }
                Button("screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("Destination for \(value)")
            }
        }
        
    }
}

#Preview {
    ToolbarBootcamp()
}
