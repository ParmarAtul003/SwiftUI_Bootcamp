//
//  PopoverNativeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/03/25.
//

import SwiftUI

struct PopoverNativeBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions:[String] = [
        "Very good",
        "Average",
        "Very bad"
    ]
    
    var body: some View {
        ZStack {
            
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button("Provide Feedback") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                /*
                .popover(isPresented: $showPopover) {
                    Text("Hello, World!")
                        //.presentationCompactAdaptation(.sheet)
                        //.presentationCompactAdaptation(.fullScreenCover)
                        .presentationCompactAdaptation(.popover)
                }*/
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
                    //Text("Hello, World!")
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                                
                            }
                        }
                        .padding(20)
                            //.presentationCompactAdaptation(.sheet)
                            //.presentationCompactAdaptation(.fullScreenCover)
                            .presentationCompactAdaptation(.popover)
                    }

                }
                
            }
            

            
        }
    }
}

#Preview {
    PopoverNativeBootcamp()
}
