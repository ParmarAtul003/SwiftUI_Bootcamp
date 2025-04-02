//
//  NavigationSplitViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/03/25.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State var visibility: NavigationSplitViewVisibility = .automatic
    @State var selectedCategory: FoodCategory? = nil
    @State var selectedFruit: Fruit? = nil
    
    var body: some View {
//        NavigationSplitView {
//            Color.red
//        } detail: {
//            Color.blue
//        }
        
        
        NavigationSplitView (columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.self, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            
//            List {
//                ForEach(FoodCategory.allCases, id: \.self) { category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                
                Group {
                    switch selectedCategory {
                    case .fruits:
//                        List {
//                            ForEach(Fruit.allCases, id: \.self) { fruit in
//                                Button(fruit.rawValue.capitalized) {
//                                    selectedFruit = fruit
//                                }
//                            }
//                        }
                        
                        List(Fruit.allCases, id: \.self, selection: $selectedFruit) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        Text("Vegetables")
                    case .grains:
                        Text("Grains")
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
                
            } else  {
                Text("Select a category to begin!")
            }
        } detail: {
            
            if let selectedFruit {
                Group {
                    Text("Details of \(selectedFruit.rawValue)")
                }
                .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select a something to view details!")
            }
        }
        .navigationSplitViewStyle(.balanced)

    }
}

enum FoodCategory: String, CaseIterable {
    case fruits
    case vegetables
    case grains
}

enum Fruit: String, CaseIterable {
    case apple
    case banana
    case orange
}

#Preview {
    NavigationSplitViewBootcamp()
}
