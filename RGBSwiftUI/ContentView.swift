//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 09.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double()
    @State private var green = Double()
    @State private var blue = Double()
    
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.6, blue: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ColorView(red: red, green: green, blue: blue)
                    .padding()
                Spacer()
                
                SliderRGB(color: .red, sliderValue: $red)
                SliderRGB(color: .green, sliderValue: $green)
                SliderRGB(color: .blue, sliderValue: $blue)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
