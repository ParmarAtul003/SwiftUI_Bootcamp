//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("SampleImage2")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
//            .scaledToFill()
            .frame(width: 300, height: 150)
            .foregroundStyle(.red)
            //.clipped()
            //.cornerRadius(150)
//            .clipShape(
//                .circle
//                Rectangle()
//                .ellipse
//            )
    }
}

#Preview {
    ImageBootcamp()
}
