//
//  Overlay.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            .clipShape(Circle())
            //.clipShape(Ellipse())
            //.clipShape(Capsule())
            // Opacity, value from 0.1 - 1.0
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.gray)
                    .opacity(0.5)
            )
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
