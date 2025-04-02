//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/02/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
//        Toggle(isOn: $isToggleOn) {
//            
//        }
        
        VStack {
            
            
            Text("Status: \(isToggleOn ? "Online" : "Offline")")
                .font(.title)
            
            
            Toggle(
                isOn: $isToggleOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
