//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/02/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(edges: .all)
            
            ColorPicker(
                "Select a color : ",
                selection: $backgroundColor,
                supportsOpacity: true
            )
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 200, height: 70)
            .background(Color.black)
            .cornerRadius(20)
            .shadow(radius: 10)
            
            
        }
        

    }
}

#Preview {
    ColorPickerBootcamp()
}
