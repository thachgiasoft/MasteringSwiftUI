//
//  DrawCurve.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawCurve: View {
    var body: some View {
        Path() {
            path in
            path.move(to:CGPoint(x: 20, y: 60))
            path.addLine(to: CGPoint(x: 40, y: 60))
            path.addQuadCurve(to: CGPoint(x: 201, y: 60), control: CGPoint(x: 125, y: 0))
            path.addLine(to: CGPoint(x: 230, y: 60))
            path.addLine(to: CGPoint(x: 230, y: 100))
            path.addLine(to: CGPoint(x: 20, y: 100))
        }
        .fill(Color.blue)
    }
}

struct DrawCurve_Previews: PreviewProvider {
    static var previews: some View {
        DrawCurve()
    }
}
