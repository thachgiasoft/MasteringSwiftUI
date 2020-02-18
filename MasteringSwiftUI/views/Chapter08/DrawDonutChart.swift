//
//  DrawDonutChart.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DrawDonutChart: View {
    var body: some View {
        
        ZStack {
            
            Circle()
                .trim(from: 0, to: 0.4)
                .stroke(Color(.systemBlue), lineWidth: 80)
                .overlay(
                    Text("40%")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x: 60, y: 135)
                )
            
            Circle()
                .trim(from: 0.4, to: 0.6)
                .stroke(Color(.systemTeal), lineWidth: 80)
                .overlay(
                    Text("20%")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x: -150, y: 0)
                )
                
            Circle()
                .trim(from: 0.6, to: 0.75)
                .stroke(Color(.systemPurple), lineWidth: 80)
                .overlay(
                    Text("15%")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x: -60, y: -130)
                )
                
            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color(.systemYellow), lineWidth: 80)
                .overlay(
                    Text("25%")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x: 120, y: -100)
                )
            
            
        }
        .frame(width: 300, height: 300)
    }
}

struct DrawDonutChart_Previews: PreviewProvider {
    static var previews: some View {
        DrawDonutChart()
    }
}
