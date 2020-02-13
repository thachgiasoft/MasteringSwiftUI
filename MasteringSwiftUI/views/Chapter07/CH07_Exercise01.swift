//
//  CH07_Exercise01.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CH07_Exercise01: View {
    
    @State private var counter = 0
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.red)
                .overlay(
                    Text("\(self.counter)")
                        .font(.system(size: 100, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                )
        }
    }
}

struct CH07_Exercise01_Previews: PreviewProvider {
    static var previews: some View {
        CH07_Exercise01()
    }
}
