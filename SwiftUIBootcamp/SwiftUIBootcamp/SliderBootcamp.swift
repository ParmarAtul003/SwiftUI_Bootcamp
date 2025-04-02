//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/02/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10
    @State var selectedValueTextColor: Color = .black
    var body: some View {
        
        VStack {
            //Text("Slider Value: \(Int(sliderValue))")
            //Text("Slider Value: \(sliderValue)")
            //Text("Slider Value: \(String(format: "%.2f", sliderValue))")
            Text("Slider Value: \(String(format: "%.0f", sliderValue))")
                .font(.largeTitle)
                .foregroundStyle(selectedValueTextColor)
            
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 0...100)
            //Slider(value: $sliderValue, in: 0...10, step: 0.5)
            Slider(value: $sliderValue,
                   in: 0...5,
                   step: 1.0,
                   label: {
                Text("Title")
            },
                   minimumValueLabel: {
                Text("Min 1")
            },
                   maximumValueLabel: {
                Text("Max 5")
            },
                   onEditingChanged: { _ in
                selectedValueTextColor = .green
            })
            .accentColor(.red)
            
        }
    }
}

#Preview {
    SliderBootcamp()
}
