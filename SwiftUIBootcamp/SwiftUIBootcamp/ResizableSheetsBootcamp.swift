//
//  ResizableSheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/03/25.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    
    @State private var showSheet:Bool = false
    @State private var detents:PresentationDetent = .large
    
    var body: some View {
        Button("Show Sheet") {
            self.showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.large, .medium])
//                .presentationDetents([.fraction(0.25), .medium, .large])
//                .presentationDetents([.height(500)])
//                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents:PresentationDetent
    
    
    var body: some View {
        ZStack {
            
            Color.red.ignoresSafeArea()
            
            VStack (spacing: 20) {
                
                Button("0.25%") {
                    detents = .fraction(0.25)
                }
                
                Button("MEDIUM") {
                    detents = .medium
                }
                
                Button("LARGE") {
                    detents = .large
                }
                
                Button("500 Pixel") {
                    detents = .height(500)
                }
                
            }
        }
        .presentationDetents([.medium, .large, .fraction(0.25), .height(500)], selection: $detents)
                        .presentationDragIndicator(.hidden)
    }
}



#Preview {
    ResizableSheetsBootcamp()
}
