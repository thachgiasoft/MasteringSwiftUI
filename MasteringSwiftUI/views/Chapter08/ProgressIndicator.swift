//
//  ProgressIndicator.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/18/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct ProgressIndicator: View {
    var body: some View {
        CustomProcessIndicator()
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator()
    }
}

struct CustomProcessIndicator: View {
    
    private var gradient = LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 207/255, green: 150/255, blue: 207/255),
            Color(red: 107/255, green: 116/255, blue: 179/255)
        ]),
        startPoint: .trailing,
        endPoint: .leading)
    
    var body: some View {
        
        ZStack {
            Circle()
                .trim(from: 0, to: 0.85)
                .stroke(gradient, lineWidth: 20)
                .frame(width: 300, height: 300)
                .overlay(
                    VStack {
                        Text("85%")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(.systemGray))
                        Text("Completed")
                            .font(.system(.body, design: .rounded))
                            .fontWeight(.heavy)
                            .foregroundColor(Color(.systemGray))
                    }

                )
        }
    }
}
