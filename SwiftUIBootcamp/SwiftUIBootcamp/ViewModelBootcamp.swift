//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/03/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FiurtViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isloading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "watermelon", count: 33)
        let fruit2 = FruitModel(name: "Banana", count: 5)
        let fruit3 = FruitModel(name: "Orange", count: 4)
        
        self.isloading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isloading = false
            
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    //@StateObject -> USE THIS ON CREATION / INIT
    //@ObservedObject -> USE THIS FOR SUBVIEW
    @StateObject var fruitViewModel: FiurtViewModel = FiurtViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isloading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
//                    .onDelete { indexSet in
//                        fruitViewModel.deleteFruit(index: indexSet)
//                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit list")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear() {
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FiurtViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(edges: .all)
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }

        }
    }
}

#Preview {
    ViewModelBootcamp()
}
