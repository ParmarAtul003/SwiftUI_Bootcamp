//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/02/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is a text editor"
    @State var enteredText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundStyle(.red)
                    .colorMultiply(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button {
                    enteredText = textEditorText
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(enteredText)
                Spacer()

            }
            .padding()
            //.background(Color.green.opacity(0.5))
            .navigationTitle(Text("Text Editor Bootcamp"))
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
