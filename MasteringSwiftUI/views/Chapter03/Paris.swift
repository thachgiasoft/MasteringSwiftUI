//
//  Paris.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct Paris: View {
    var body: some View {
        Image("paris")
            .resizable()
            // This will ignore the safe area and fill the picture to the whole screen
            .edgesIgnoringSafeArea(.all)
            //.scaledToFit()
            //.scaledToFill()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .clipped()
    }
}

struct Paris_Previews: PreviewProvider {
    static var previews: some View {
        Paris()
    }
}
