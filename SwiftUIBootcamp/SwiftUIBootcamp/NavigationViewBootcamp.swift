//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 24/02/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                NavigationLink(destination: Text("Destination")) {
                    Text("Go to Destination")
                }
                
                NavigationLink("Go to second screen") {
                    Text("This is second screen")
                }
                
                NavigationLink("New Screen", destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing:
                    NavigationLink(destination: MyOtherScreen(),
                                   label: {
                                       Image(systemName: "gear")
                                   })
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea(.all)
                .navigationTitle("Yello Screen")
                .navigationBarHidden(true)
            
            VStack {
                
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Go to 3rd screen", destination: Text("I am 3rd screen"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
