//
//  Cards.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/12/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct Cards: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, August 20")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                }
                Spacer()
            }.padding()
            ScrollView {
                VStack {
                    CardView(image: "swiftui-button", category: "Swift UI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kabampati")
                }
            }
        }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
