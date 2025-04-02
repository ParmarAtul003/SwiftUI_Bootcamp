//
//  ObservableBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 27/03/25.
//

import SwiftUI

//https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro

@Observable class ObservableViewModel {
    var title = "Hello, World!"
    //@ObservationIgnored var value = "Hello, World!"
}

struct ObservableBootcamp: View {
    
    @State var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack (spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New Title!!!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeTHirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Child Button Clicked!!!"
        }
    }
}

struct SomeTHirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View Button Clicked!!!"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
