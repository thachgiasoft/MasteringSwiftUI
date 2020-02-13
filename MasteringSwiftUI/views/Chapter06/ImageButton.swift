//
//  ImageButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct ImageButton: View {
    var body: some View {
        Button(action: {
            print("Image tapped")
        }) {
            Image(systemName: "trash")
                .padding()
                .background(Color.red)
                .clipShape(Circle())
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton()
    }
}
