//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/02/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data:[String] = ["Apple", "Banana", "Orange", "Mango", "Pineapple"]
    
    var body: some View {
        VStack {
            
            ForEach(0..<10) { index in
                //Text("Hi : \(index)")
                HStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                    Text("Index is :\(index)")
                }
                
            }
            
            /*
            ForEach(0..<data.count) { index in
                Text("\(data[index]): \(index)")
                //Text(self.data[index])
            }*/
            
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            /*
            ForEach(data, id: \.self) { fruit in
                Text(fruit)
            }
            */
        }
    }
}

#Preview {
    ForEachBootcamp()
}
