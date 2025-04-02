//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/02/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgriousColor: Color
    let count: Int
    let title: String
    
    enum Fiurt {
        case apple
        case banana
        case orange
    }
    
    init(count: Int, fiurt: Fiurt) {
        self.count = count
       
        if fiurt == .apple {
            self.title = "Apples"
            self.backgriousColor = .red
        } else if fiurt == .banana {
            self.title = "Bananas"
            self.backgriousColor = .yellow
        } else {
            self.title = "Oranges"
            self.backgriousColor = .orange
        }
    }
    
    var body: some View {
        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .foregroundStyle(.white)
                
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgriousColor)
        .cornerRadius(15)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 5, fiurt: .apple)
        InitializerBootcamp(count: 10, fiurt: .banana)
        InitializerBootcamp(count: 15, fiurt: .orange)
        
    }
    
}
