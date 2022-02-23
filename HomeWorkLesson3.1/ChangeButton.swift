//
//  ChangeBotton.swift
//  HomeWorkLesson3.1
//
//  Created by Олейник Богдан on 23.02.2022.
//

import SwiftUI

struct ChangeButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 220, height: 70)
        .background(Color.blue)
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct ChangeButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeButton(title: "START", action: {})
    }
}
