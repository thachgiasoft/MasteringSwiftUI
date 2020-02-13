//
//  SwiftUIState.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/13/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct SwiftUIState: View {
    
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 200))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }
}

struct SwiftUIState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIState()
    }
}
