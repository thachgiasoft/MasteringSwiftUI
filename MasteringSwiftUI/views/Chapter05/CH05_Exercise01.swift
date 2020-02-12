//
//  CH05_Exercise01.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/12/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CH05_Exercise01: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, August 2020".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                }
                Spacer()
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CardView(image: "swiftui-button", category: "Swift UI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng").frame(width: 300)
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos").frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan").frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kabampati").frame(width: 300)
                }
            }
        }
    }
}

struct CH05_Exercise01_Previews: PreviewProvider {
    static var previews: some View {
        CH05_Exercise01()
    }
}
