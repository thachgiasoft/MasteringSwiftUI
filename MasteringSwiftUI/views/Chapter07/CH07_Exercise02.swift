//
//  CH07_Exercise02.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CH07_Exercise02: View {
    
    @State var redCounter : Int = 0
    @State var blueCounter : Int = 0
    @State var greenCounter : Int = 0
    
    var body: some View {
        VStack {
            Text("\(redCounter + blueCounter + greenCounter)")
                .font(.system(size: 220, weight: .bold, design: .rounded))
            HStack {
                CustomCounterButton(counter: $redCounter, color: .red)
                CustomCounterButton(counter: $blueCounter, color: .blue)
                CustomCounterButton(counter: $greenCounter, color: .green)
            }
        }
    }
}

struct CH07_Exercise02_Previews: PreviewProvider {
    static var previews: some View {
        CH07_Exercise02()
    }
}

struct CustomCounterButton: View {
    
    @Binding var counter : Int
    var color: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
            .frame(width: 120, height: 120, alignment: .center)
            .foregroundColor(color)
            .overlay(
                Text("\(self.counter)")
                    .font(.system(size: 48, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            )
        }.padding(5)
    }
}
