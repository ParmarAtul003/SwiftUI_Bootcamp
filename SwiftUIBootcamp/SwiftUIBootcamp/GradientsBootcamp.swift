//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //.red
                //.linearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                //.linearGradient(Gradient(colors: [.red, .yellow, .blue]), startPoint: .trailing, endPoint: .leading)
                //.radialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 150)
                //.angularGradient(Gradient(colors: [.red, .blue]), center: .topLeading, startAngle: .zero, endAngle: Angle(degrees: 90))
            )
            .frame(width: 300, height: 300)
    }
}

#Preview {
    GradientsBootcamp()
}
