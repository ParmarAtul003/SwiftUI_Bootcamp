//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/02/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert = false
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlertType? = nil
    
    enum MyAlertType {
        case error
        case success
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    
                    alertType = .error
                    
                    alertTitle = "Error uploading file"
                    alertMessage = "The file could not be uploaded due to some error. Please try again later."
                    showAlert.toggle()
                }
                Button("Button 2") {
                    
                    alertType = .success
                    
                    alertTitle = "Success"
                    alertMessage = "File uploaded successfully! 😁"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
            case .error:
            return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        case .success:
            return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
            }))
        default:
            return Alert(title: Text("Error"))
        }
        
        //Alert(title: Text("Alert"))
        
        //Alert(title: Text("Alert"), message: Text("This is sample alert box"))
        
//        Alert(title: Text("Alert"), message: Text("This is sample alert box"), primaryButton: .destructive(Text("Delete"), action: {
//            backgroundColor = .red
//        }), secondaryButton: .cancel())
        
        //return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
    }
}

#Preview {
    AlertBootcamp()
}
