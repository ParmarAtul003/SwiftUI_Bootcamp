//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/03/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID:String? = "Testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USER ! EVER!!!!!
                // DO NOT FORCE UNWRAP VALUE
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.displayText = "This is the new data!: UserID is : \(userID)"
                self.isLoading = false
            }
        } else {
            displayText = "Error. There is no user ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.displayText = "This is the new data!: UserID is : \(userID)"
            self.isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
