//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack (spacing: 30){
            TextField("Enter text here...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Entered text is : ", text)
                }
            
            TextField("Enter text here...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Entered text is : ", text)
                }
            
            TextField("Enter text here...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Entered text is : ", text)
                }
            
            TextField("Enter text here...", text: $text)
                .submitLabel(.done)
                .onSubmit {
                    print("Entered text is : ", text)
                }
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
