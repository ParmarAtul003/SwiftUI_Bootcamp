//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/02/25.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 95
    @State var widthIncrement: CGFloat = 0
    
    
    var body: some View {
        Stepper("Stepper Value: \(stepperValue)", value: $stepperValue)
            .padding(50)
        
        
//        Stepper(value: $stepperValue, in: 0...100) {
//            Text("Stepper (Range 0...100): \(stepperValue)")
//        }
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100 + widthIncrement, height: 100)
        
        Stepper("Custom Stepper") {
            //Increment
            if widthIncrement < 200 {
                incrementWidth(amount: 10)
            }
        } onDecrement: {
            //Decrement
            if widthIncrement > 0 {
                widthIncrement -= 10
            }
        }
        .padding(50)

    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
