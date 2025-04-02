//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 24/02/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "orange", "Mango"]
    @State var vegetables: [String] = ["Carrot", "Broccoli", "Cucumber"]
    
    var body: some View {
        
        NavigationView {
            List {
                
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundStyle(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.vertical)
                    }
    //                .onDelete(perform: { indexSet in
    //                    delete(at: indexSet)
    //                })
                    .onDelete(perform: delete(at:))
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                }
                
            }
            //.accentColor(.purple)
            .tint(.blue)
            //.listStyle(SidebarListStyle())
            .navigationTitle(Text("Grocery List"))
            .navigationBarItems(leading: EditButton() ,trailing: addButton)
        }
        .accentColor(.red)
        
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            addItem()
        })
    }
    
    func delete(at indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(fromOffsets indices: IndexSet, toOffset newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
