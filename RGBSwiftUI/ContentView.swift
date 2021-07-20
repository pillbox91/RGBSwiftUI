//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 09.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.6, blue: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ColorView(red: 100, green: 1, blue: 1)
                    .padding()
                Spacer()
                
                SliderRGB(color: .red)
                SliderRGB(color: .green)
                SliderRGB(color: .blue)
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
