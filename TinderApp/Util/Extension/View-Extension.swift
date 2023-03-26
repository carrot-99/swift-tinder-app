//
//  View-Extension.swift
//  TinderApp
//
//  Created by USER on 2023/02/25.
//

import SwiftUI

extension View {
    
    func asRoundShadow(size: CGFloat) -> some View {
        modifier(BottomButtonModifier(size: size))
    }
    
    func asSignInTextField() -> some View {
        modifier(SignInTextFieldModifier())
    }
}


