//
//  SliderRGB.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 10.07.2021.
//

import SwiftUI

struct SliderRGB: View {
    let color: Color
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $sliderValue)
                .accentColor(color)
            Text("255")
        }
        .padding(.horizontal)
    }
}

struct SliderRGB_Previews: PreviewProvider {
    static var previews: some View {
        SliderRGB(color: .red)
    }
}
