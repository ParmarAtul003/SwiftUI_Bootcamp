//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title = "This is a title"
    
    var body: some View {
        VStack (spacing: 20){
            
            Text(title)
                .font(.headline)
            
            Button("Click me") {
                self.title = "You clicked me!"
            }
            
            Button {
                self.title = "You have pressed SAVE Button"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 10))
                    .shadow(radius: 5)
            }
            
            
            Button {
                self.title = "You have pressed heat Button"
            } label: {
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundStyle(Color.red)
                            
                    )
            }

            
            Button {
                self.title = "You have pressed Finish Button"
            } label: {
                Text("Finish")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3)
                    )
            }

            

        }
        
        
    }
}

#Preview {
    ButtonBootcamp()
}
