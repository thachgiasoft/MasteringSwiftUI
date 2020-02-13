//
//  CustomButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button(action: {
            print("Delete button tapped")
        }) {
            HStack {
                Image(systemName: "trash")
                Text("Delete")
                    .fontWeight(.heavy)
            }
            .padding()
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(.white)
            //.background(Color.red)
            .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
            .shadow(color: .gray, radius: 5.0, x: 20, y: 20)
            .cornerRadius(40)
        }
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
