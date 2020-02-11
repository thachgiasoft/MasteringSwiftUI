//
//  HelloWorld.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct HelloWorld: View {
    var body: some View {
        /*Text("Hello World!")
            .font(.system(size: 60, weight: .heavy, design: .rounded))
            .foregroundColor(.purple)*/
        
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            // Set how the paragraph will be cutted
            .truncationMode(.head)
            // Set the space between lines
            .lineSpacing(10)
            // Adding space on the top, right, left and button
            .padding()
            // 2D Roration Effect
            //.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))
            // 3D Rotation Effect
            .rotation3DEffect(.degrees(30), axis: (x: 1, y: 0, z: 0))
            // Shadow Effect
            .shadow(color: .gray, radius: 2, x: 0, y: 15)
        
    }
}

struct HelloWorld_Previews: PreviewProvider {
    static var previews: some View {
        HelloWorld()
    }
}
