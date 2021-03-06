//
//  SliderRGB.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 10.07.2021.
//

import SwiftUI

struct SliderRGB: View {
    let color: Color
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            ColorSlider(value: $sliderValue)
                .accentColor(color)
        }
        .padding(.horizontal)
    }
}

struct SliderRGB_Previews: PreviewProvider {
    static var previews: some View {
        SliderRGB(color: .red, sliderValue: .constant(100))
    }
}

struct ColorSlider: View {
    @Binding var value: Double

    var body: some View {
            Slider(value: $value, in: 0...255, step: 1)
        }
    }

struct TextFieldSlider: View{
    @Binding var value: String
    
    var body: some View{
        TextField("", text: $value)
    }
}
