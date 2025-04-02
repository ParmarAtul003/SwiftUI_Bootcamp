//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/03/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected:Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(isSelected ? Color.green : Color.red)
                .frame(width: 200, height: 200)
//                .overlay(
//                    Text("Tap Me!")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                )
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.black)
                    .cornerRadius(25)
            }
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.black)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

        }
    }
}

#Preview {
    TapGestureBootcamp()
}
