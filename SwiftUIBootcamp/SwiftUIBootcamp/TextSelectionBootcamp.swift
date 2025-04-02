//
//  TextSelectionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/03/25.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled) //Long press on text to show copy/selection options.
    }
}

#Preview {
    TextSelectionBootcamp()
}
