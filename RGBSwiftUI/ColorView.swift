//
//  ColorView.swift
//  RGBSwiftUI
//
//  Created by Андрей Аверьянов on 18.07.2021.
//

import SwiftUI

struct ColorView: View {
    let color: UIColor
    
    var body: some View {
        VStack {
            Color(color)
                .frame(width: 250, height: 100)
                .clipShape(Rectangle())
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                .shadow(radius: 10)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .red)
    }
}
