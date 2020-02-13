//
//  CH06_Exercise01.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct CH06_Exercise01: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Plus tapped")
            }) {
                Image(systemName: "plus")
                    .font(.system(.largeTitle, design: .rounded))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .clipShape(Circle())
            }.padding()
            
            Button(action: {
                print("Plus tapped")
            }) {
                Image(systemName: "plus")
                    .font(.system(.largeTitle, design: .rounded))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .clipShape(Circle())
                    .rotationEffect(.degrees(45))
            }.padding()
        }
    }
}

struct CH06_Exercise01_Previews: PreviewProvider {
    static var previews: some View {
        CH06_Exercise01()
    }
}
