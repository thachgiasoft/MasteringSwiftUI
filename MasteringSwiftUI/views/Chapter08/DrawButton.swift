//
//  DrawButton.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawButton: View {
    var body: some View {
        Button(action: {
            print("Button clicked")
        }) {
            Text("Test Button")
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .frame(width: 250, height: 50)
                .background(CustomButton02().fill(Color.red))
        }
    }
}

struct DrawButton_Previews: PreviewProvider {
    static var previews: some View {
        DrawButton()
    }
}

struct CustomButton02: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(
            to: CGPoint(x: rect.size.width, y: 0),
            control: CGPoint(
                x: rect.size.width/2,
                y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
        
    }
}
