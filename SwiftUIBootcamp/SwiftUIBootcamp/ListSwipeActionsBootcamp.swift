//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "orange", "mango"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        
                        Button("Archive") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                        
                        Button("Delete") {
                            
                        }
                        .tint(.red)
                        
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        
                        
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                        
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
