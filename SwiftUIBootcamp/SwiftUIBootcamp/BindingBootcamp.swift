//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text(title)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "New title !!!!!"
        } label: {
            Text("Tap Me")
                .font(.subheadline)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBootcamp()
}
