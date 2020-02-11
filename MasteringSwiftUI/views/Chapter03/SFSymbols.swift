//
//  SFSymbols.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        Image(systemName: "cloud.hail")
            .font(.system(size: 300))
            .foregroundColor(.blue)
            .shadow(color: .gray, radius: 10, x:0, y:0)
    }
}

struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
