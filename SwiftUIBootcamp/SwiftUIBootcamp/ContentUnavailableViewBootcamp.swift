//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/03/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            //ContentUnavailableView("No Data Found", systemImage: "slider.horizontal.3", description: Text("Please try again later."))
            
            //ContentUnavailableView("No Internet Connection", systemImage: "wifi.slash", description: Text("Please connect to the internet and try again."))
            
            //ContentUnavailableView.search
            
            ContentUnavailableView.search(text: "abc")
            
            
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
