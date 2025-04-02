//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/02/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@userName")
                Spacer()
                //                Image(systemName: "ellipsis")
                //                    .onTapGesture {
                //                        showActionSheet.toggle()
                //                    }
                
                Button {
                    actionSheetOptions = .isMyPost
                    
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
        /*
         ZStack {
         
         backgroundColor.ignoresSafeArea(.all)
         
         Button("Click me") {
         showActionSheet.toggle()
         }
         .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
         }
         */
        
        
    }
    
    func getActionSheet() -> ActionSheet {
        //return ActionSheet(title: Text("This is an action sheet"))
        
        /*
         var buttons: [ActionSheet.Button] = []
         buttons.append(.default(Text("Default"), action: {
         backgroundColor = .red
         }))
         buttons.append(.destructive(Text("Destructive"), action: {
         backgroundColor = .green
         }))
         buttons.append(.cancel())
         
         return ActionSheet(title: Text("This is an action sheet title"),
         message: Text("This is a message"),
         buttons: buttons)
         */
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //Add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //Add code to report post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //add code to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title: Text = Text("What would you like to do?")
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        }
    }
}
#Preview {
    ActionSheetBootcamp()
}
