//
//  Color.swift
//  HomeWorkLesson3.1
//
//  Created by Олейник Богдан on 23.02.2022.
//

import SwiftUI

struct LightColor: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
    }
}

struct Color_Previews: PreviewProvider {
    static var previews: some View {
        LightColor(color: .red, opacity: 1)
    }
}
