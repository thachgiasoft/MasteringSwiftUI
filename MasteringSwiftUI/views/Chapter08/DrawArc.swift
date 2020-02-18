//
//  DrawArc.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawArc: View {
    var body: some View {
        Path() {
            path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: .init(x: 200, y: 200),
                        radius: 150,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 135),
                        clockwise: true)
        }
        .fill(Color.red)
    }
}

struct DrawArc_Previews: PreviewProvider {
    static var previews: some View {
        DrawArc()
    }
}
