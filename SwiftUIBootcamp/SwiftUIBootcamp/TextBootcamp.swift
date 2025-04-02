//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, world! This is a SwiftUI app built with SwiftUI Bootcamp 🚀".capitalized)
//                .font(.title)
//                .multilineTextAlignment(.center)
//                .lineLimit(1)
//                .foregroundStyle(.brown)
//                .bold()
//                .underline()
//                .font(.system(size: 24, weight: .semibold, design: .serif))
//                .baselineOffset(30)
//                .kerning(1)
            .multilineTextAlignment(.trailing)
            .frame(width:150, height: 50, alignment: .center)
            .minimumScaleFactor(0.5)
    }
}

#Preview {
    TextBootcamp()
}
