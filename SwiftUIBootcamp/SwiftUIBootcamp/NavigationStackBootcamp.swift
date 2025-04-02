//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]
    
    @State private var stackPath:[String] = []
    
    var body: some View {
        //NavigationStack (path: $stackPath){
        NavigationStack {
            
            ScrollView {
                VStack(spacing: 20) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf:
                        [
                            "Coconut", "Lemon", "Grapes"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    
                    ForEach(0..<10) { n in
                        NavigationLink(value: n) {
                            Text("Go to Another View \(n)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Anouther screen: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value:Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: ", value)
    }
    
    var body: some View {
        Text("This is my \(value) screen")
    }
}

#Preview {
    NavigationStackBootcamp()
}
