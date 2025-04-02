//
//  TernaryOperatorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 21/02/25.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button : \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting state..!!!" : "ending state..!!!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 20 : 0 )
                .fill( isStartingState ? Color.green : .blue)
                .frame(width: isStartingState ? 200 : 100, height: 50)
            
            
            Spacer()
        }
        
    }
}

#Preview {
    TernaryOperatorsBootcamp()
}
