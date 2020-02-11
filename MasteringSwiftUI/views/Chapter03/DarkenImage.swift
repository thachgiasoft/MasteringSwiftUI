//
//  DarkenImage.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct DarkenImage: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .overlay(
                Rectangle()
                    .foregroundColor(.black)
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .frame(width: 200)
                    )
            )
    }
}

struct DarkenImage_Previews: PreviewProvider {
    static var previews: some View {
        DarkenImage()
    }
}
