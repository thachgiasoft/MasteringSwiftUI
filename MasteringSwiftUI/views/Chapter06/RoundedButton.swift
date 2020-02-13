//
//  RoundedButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct RoundedButton: View {
    var body: some View {
        Button(action: {
            print("Hello World is tapped")
        }) {
            Text("Hello World")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(40)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                )
        }
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton()
    }
}
