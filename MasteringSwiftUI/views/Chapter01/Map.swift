//
//  Map.swift
//  MasteringSwiftUI
//
//  Created by Steven Ang on 2/11/20.
//  Copyright © 2020 Steven Ang. All rights reserved.
//

import SwiftUI
import MapKit

struct Map: View {
    var body: some View {
        MapView()
    }
}

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
