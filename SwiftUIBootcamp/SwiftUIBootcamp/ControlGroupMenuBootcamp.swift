//
//  ControlGroupMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/03/25.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            
            ControlGroup("First Item") {
                Button("Uno") {}
                Button("Dos") {}
                Menu("How are you?") {
                    Button("I'm fine") {}
                    Button("Not so fine") {}
                }
            }
            
            Button("Second Item") {}
            Button("Third Item") {}
            Menu("Nested Menu") {
                Button("A") {}
                Button("B") {}
                Button("C") {}
                Menu("Even Nested Menu") {
                    Button("X") {}
                    Button("Y") {}
                    Button("Z") {}
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
