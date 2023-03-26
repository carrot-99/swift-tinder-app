//
//  Image-Extension.swift
//  TinderApp
//
//  Created by USER on 2023/02/25.
//

import SwiftUI

extension Image {
    func asTopControlButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30, alignment: .center)
    }
}
