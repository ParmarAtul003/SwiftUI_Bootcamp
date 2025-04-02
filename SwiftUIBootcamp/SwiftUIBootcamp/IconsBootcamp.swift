//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "externaldrive.fill.badge.plus")
            .renderingMode(.original)
//            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFit()
            .font(.title)
            //.font(.system(size: 200))
            .foregroundStyle(.yellow)
//            .frame(width: 200, height: 200)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
