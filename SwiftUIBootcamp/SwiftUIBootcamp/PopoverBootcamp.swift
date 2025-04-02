//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 24/02/25.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            
            //METHOD-1: SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            //METHOD-2: TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }.zIndex(2.0)
            
            //Option 2 for second method of transition
//            VStack(){
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 20)
//                        .transition(.move(edge: .bottom))
//                }
//            } .animation(.spring(), value: showNewScreen)
            
            //METHOD-3: ANIMATION OFFSET
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring())
            
            //Option 2 for second method of animation offset
            VStack(){
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top,100)
                    .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                
            } .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Button {
                    //presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(20.0)
                }

                Spacer()
            }
        }
    }
}


#Preview {
    PopoverBootcamp()
}
