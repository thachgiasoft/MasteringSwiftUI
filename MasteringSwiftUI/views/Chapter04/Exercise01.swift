//
//  Exercise01.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/12/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct Exercise01: View {
    var body: some View {
        VStack(spacing: 15) {
            HeaderView()
            HStack(spacing: 15) {
                PricingView(title: "Basic", pricing: "$9", textColor: Color.white, backgroundColor: Color.purple)
                ZStack {
                    PricingView(title: "Pro", pricing: "$19", textColor: Color.black,
                        backgroundColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 87)
                }
            }
            .padding(.horizontal)
            ZStack {
                PricingView(title: "Team", pricing: "$299", textColor: Color.white, backgroundColor: Color(red: 0/255, green: 0/255, blue: 0/255), icon: "wand.and.rays")
                    .padding()
                Text("Perfect for teams with 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 110)
            }
            Spacer()
        }
    }
}

struct Exercise01_Previews: PreviewProvider {
    static var previews: some View {
        Exercise01()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
        
    }
}

struct PricingView: View {
    
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
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(backgroundColor)
        .cornerRadius(10)
    }
    
}
