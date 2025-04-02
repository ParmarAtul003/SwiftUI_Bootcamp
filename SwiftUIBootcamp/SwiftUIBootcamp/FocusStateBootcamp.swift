//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/03/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username:String = ""
    //@FocusState private var usernameInFocus: Bool
    
    @State private var password:String = ""
    //@FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack (spacing: 30){
            TextField("Enter your name here", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
            
            SecureField("Enter your password here", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            
            Button("Login 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Logging in with username: \(username) and password: \(password)")
                } else if usernameIsValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            
//            Button("Toggle foucus state") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
