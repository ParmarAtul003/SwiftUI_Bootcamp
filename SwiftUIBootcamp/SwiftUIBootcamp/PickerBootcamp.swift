//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/02/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selectedItem: String = "Apple"
    @State var selectedAge: String = "18"
    @State var selectedFilter: String = "All"
    var filterArray: [String] = ["All", "Most Resent", "Most Liked", "Most Popular"]
    
    
    init () {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        
    }
    
    var body: some View {
        
        VStack {
            Text("Favorite Fruit is: \(selectedItem)")
            
           
                Picker(
                    selection: $selectedItem,
                    label: Text("Favorite Fruit"),
                    content: {
                        Text("Apple").tag("Apple")
                        Text("Banana").tag("Banana")
                        Text("Orange").tag("Orange")
                        Text("Mango").tag("Mango")
                        Text("Pineapple").tag("Pineapple")
                    })
                //.pickerStyle(PalettePickerStyle())//Only iOS 17.0 +
                .pickerStyle(SegmentedPickerStyle())
                .background(.green)
            
            
            
            Text("Age is: \(selectedAge)")
            
            Picker(
                selection: $selectedAge,
                label: Text("Favorite Fruit"),
                content: {
//                    ForEach(1...100, id: \.self) { age in
//                        Text("\(age)").tag("\(age)")
//                    }
                    ForEach(18..<100) { age in
                        Text("\(age)")
                            .font(.title)
                            .foregroundStyle(.red)
                            .tag("\(age)")
                    }
                })
            .pickerStyle(WheelPickerStyle())
            .background(Color.yellow)
            
            
            Picker(
                selection: $selectedFilter,
                label:
                    HStack {
                        Text("Filter: ")
                        Text("\(selectedFilter)")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.blue)
                ,
                content: {
                    ForEach(filterArray, id: \.self) { filter in
                        HStack {
                            Text(filter)
                            Image(systemName: "heart.fill")
                        }
                        .tag(filter)
                    }
                })
            .pickerStyle(MenuPickerStyle())
            
        }
        
        
    }
}

#Preview {
    PickerBootcamp()
}
