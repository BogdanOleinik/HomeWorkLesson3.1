//
//  ContentView.swift
//  HomeWorkLesson3.1
//
//  Created by Олейник Богдан on 23.02.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            yellowLight = lightIsOff
            greenLight = lightIsOn
        }
    }
}

    extension ContentView {
        var body: some View {

            VStack(spacing: 20) {
                LightColor(color: .red, opacity: redLight)
                LightColor(color: .yellow, opacity: yellowLight)
                LightColor(color: .green, opacity: greenLight)
                
                Spacer()
                
                ChangeButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
