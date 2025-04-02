//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/03/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("userName") var currentUserName: String?
    
    var body: some View {
        VStack (spacing: 20){
            Text(currentUserName ?? "No User Logged In")
            
            if let name = currentUserName {
                Text("Hello \(name)")
            }
            
            Button("Login") {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
