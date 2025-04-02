//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/03/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data:[String] = ["Apple", "Banana", "Orange", "Mango"]
    @State var showAlert:Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do
    // 1) Fix title
    // 2) Fix alert
    
    //Working copy - things to do
    /*
      1) Fix title
      2) Fix alert
     */
    
    var body: some View {
        NavigationView { //START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle(Text("Documentation"))
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is an alert")
                }
            }
        }//END: NAV
    }
    
    ///This is the foreground layer that holds scrollview.
    private var foregroundLayer: some View {
        ScrollView { //START: SCROLLV
            Text("Hello")
            ForEach(data, id:\.self){ item in
                Text(item)
                    .font(.headline)
            }
        } //END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Get an alert with specified title.
    ///
    ///This function creates and returns an alert immediately. The alert will have a title based on the parameter but it will NOT have a message.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        Alert(title: Text(text))
    }
}


//MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
