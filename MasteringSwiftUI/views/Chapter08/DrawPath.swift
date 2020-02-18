//
//  DrawPath.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawPath: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Path() {
            path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
        }
        .fill(Color.blue)
    }
}

struct DrawPath_Previews: PreviewProvider {
    static var previews: some View {
        DrawPath()
    }
}
