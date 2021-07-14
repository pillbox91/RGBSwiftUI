//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 09.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SliderRGB(color: .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
