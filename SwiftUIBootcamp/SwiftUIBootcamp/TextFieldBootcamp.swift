//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/02/25.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Enter something here...", text: $textFieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.yellow.opacity(0.2).cornerRadius(10))
                    .foregroundStyle(.blue)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        submitText()
                    }
                } label: {
                    Text("Submit".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle(Text("TextField Bootcamp"))
        }
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldText.count >= 3
    }
    
    func submitText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
