//
//  ButtonStylesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button("Button Title 1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button Title 2") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            Button("Button Title 3") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            Button("Button Title 4") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            //default AccentColor get from Assets color.
            
            Button("Button Title 5") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            if #available(iOS 17.0, *) {
                Button("Button Title 6") {
                    
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.extraLarge)
            } else {
                // Fallback on earlier versions
            }
            
            Button("Button Title 7") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button("Button Title 8") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button {
                
            } label: {
                Text("Button Title 9")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            //.buttonBorderShape(.capsule)
            .buttonBorderShape(.roundedRectangle(radius: 25))
            .controlSize(.large)
            
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
