//
//  CounterButtons.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CounterButtons: View {
    
    @State var counter : Int = 0
    
    var body: some View {
        VStack {
            CounterButton(counter: $counter, color: .red)
            CounterButton(counter: $counter, color: .yellow)
            CounterButton(counter: $counter, color: .green)
        }
    }
}

struct CounterButtons_Previews: PreviewProvider {
    
    static var previews: some View {
        CounterButtons()
    }
}

struct CounterButton: View {
    
    @Binding var counter: Int
    var color: Color
    
    var body: some View {
        
        Button(action: {
            self.counter += 1
        }) {
            Circle()
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundColor(color)
            .overlay(
                Text("\(self.counter)")
                    .font(.system(size: 100, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            )
        }.padding()
        
    }
}
