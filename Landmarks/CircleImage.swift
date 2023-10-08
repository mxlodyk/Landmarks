//  CircleImage.swift
//  Landmarks
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("State War Memorial")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
