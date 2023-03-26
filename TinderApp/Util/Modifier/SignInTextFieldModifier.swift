//
//  SignInTextFieldModifier.swift
//  TinderApp
//
//  Created by USER on 2023/02/26.
//

import SwiftUI

struct SignInTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .padding(.leading, 10)
            .textFieldStyle(PlainTextFieldStyle())
            .background(Color.white)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.init(white:0.85, alpha: 1))))
    }
}
