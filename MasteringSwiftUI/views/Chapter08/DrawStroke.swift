//
//  DrawStroke.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawStroke: View {
    var body: some View {
        
        Path() {
            path in
            path.move(to: CGPoint(x: 20, y:20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.closeSubpath()
        }
        .stroke(Color.blue, lineWidth: 10)
    }
}

struct DrawStroke_Previews: PreviewProvider {
    static var previews: some View {
        DrawStroke()
    }
}
