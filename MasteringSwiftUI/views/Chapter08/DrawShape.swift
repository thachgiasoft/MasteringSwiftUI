//
//  DrawShape.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawShape: View {
    var body: some View {
        Path() {
            path in
            path.move(to: CGPoint(x: 10, y: 50))
            path.addQuadCurve(
                to: CGPoint(x: 200, y: 50),
                control: CGPoint(x: 100, y: -20))
            path.addRect(CGRect(x: 10, y: 50, width: 190, height: 50))
        }
        .fill(Color.green)
    }
}

struct DrawShape_Previews: PreviewProvider {
    static var previews: some View {
        DrawShape()
    }
}
