//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 24/02/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            //background
            Color.blue.edgesIgnoringSafeArea(.all)
            
            //Content
            Button {
                showSheet.toggle()
            } label: {
                Text("Show Sheet")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.white.cornerRadius(10))
                    
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet) {
                  //DO NOT ADD ANY CONDITIONAL LOGIC HERE.
//                SecondScreen()
//            }

            
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            //background
            Color.red.edgesIgnoringSafeArea(.all)
            
            //Content
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)

                    
            }
        }
    }
}


#Preview {
    SheetsBootcamp()
    //SecondScreen()
}
