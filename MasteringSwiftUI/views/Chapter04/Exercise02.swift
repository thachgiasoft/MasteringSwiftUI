//
//  Exercise02.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/12/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct Exercise02: View {
    var body: some View {
        ZStack {
            PricingView02(title: "Basic", pricing: "$9", textColor: .white, backgroundColor: .purple, icon: "burst.fill")
                .padding()
                .offset(x: 0, y: -220)
            PricingView02(title: "Pro", pricing: "$19", textColor: .white, backgroundColor: .orange, icon: "dial")
                .padding()
                .offset(x: 0, y: -110)
            PricingView02(title: "Team", pricing: "$229", textColor: .white, backgroundColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                .padding()
        }
    }
}

struct Exercise02_Previews: PreviewProvider {
    static var previews: some View {
        Exercise02()
    }
}

struct PricingView02: View {
    
    var title: String
    var pricing: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack {
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(pricing)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: 300)
        .padding(40)
        .background(backgroundColor)
        .cornerRadius(10)
    }
    
}
