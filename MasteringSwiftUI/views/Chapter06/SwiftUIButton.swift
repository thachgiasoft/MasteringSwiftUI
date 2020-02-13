//
//  SwiftUIButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        Button(action: {
            print("Hello World Tapped")
        }){
            Text("Hello World")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                //.foregroundColor(.purple)
                .padding()
                .border(Color.purple, width: 5)
                
        }
    }
}

struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
