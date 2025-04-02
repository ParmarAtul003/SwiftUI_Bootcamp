//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/03/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    //@State var users: [String] = ["Atul", "Emily", "Shubham", "Amit", "Rohit"]
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Atul", username: "atul123", followerCount: 200, isVerified: true),
        UserModel(displayName: "Emily", username: "emily456", followerCount: 150, isVerified: true),
        UserModel(displayName: "Shubham", username: "shubham789", followerCount: 100, isVerified: false),
        UserModel(displayName: "Amit", username: "amit000", followerCount: 50, isVerified: false),
        UserModel(displayName: "Rohit", username: "rohit111", followerCount: 30, isVerified: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
//                ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15.0) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                    .padding(.vertical, 10)
//                }
                
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundStyle(.secondary)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.secondary)
                                .font(.caption)
                                
                        }
                    }
                    .padding(.vertical, 10)
                }
                
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
