//
//  FullWidthButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct FullWidthButton: View {
    var body: some View {
        VStack {
            ButtonView(title: "Share", image: "square.and.arrow.up")
            ButtonView(title: "Edit", image: "square.and.pencil")
            ButtonView(title: "Delete", image: "trash")
        }
        .padding()
    }
}

struct FullWidthButton_Previews: PreviewProvider {
    static var previews: some View {
        FullWidthButton()
    }
}

struct ButtonView: View {
    
    var title: String
    var image: String
    
    var body: some View {
        Button(action: {
            print(self.title + " tapped")
        }) {
            HStack {
                Image(systemName: self.image)
                Text(self.title)
                    .fontWeight(.heavy)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
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
