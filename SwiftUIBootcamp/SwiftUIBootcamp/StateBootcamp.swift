//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //Background
            backgroundColor
                .ignoresSafeArea(.all)
            
            //Content
            VStack (spacing: 20){
                Text(title)
                    .font(.largeTitle)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack (spacing: 20){
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        title = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    StateBootcamp()
}
