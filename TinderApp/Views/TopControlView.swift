//
//  TopContorolView.swift
//  TinderApp
//
//  Created by USER on 2023/02/25.
//

import SwiftUI

struct TopControlView: View {
    
    enum SelectedItem{
        case tinder, good, comment, profile
    }
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @State var selectedItem: SelectedItem = .good
    
    var body: some View {
        HStack{
            Button(action: {
                selectedItem = .tinder
            }, label: {
//                    Text("Button")
                Image(systemName: "flame.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .tinder ? .red : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.leading, 30)
            
            Button(action: {
                selectedItem = .good
            }, label: {
                Image(systemName: "suit.diamond.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .good ? .yellow : .gray)
            })
            .frame(width: frameWidth / 4)
            
            Button(action: {
                selectedItem = .comment
            }, label: {
                Image(systemName: "message.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .comment ? .orange : .gray)
            })
            .frame(width: frameWidth / 4)
            
            Button(action: {
                selectedItem = .profile
            }, label: {
                Image(systemName: "person.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .profile ? .pink : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.trailing, 30)
        }
        .padding()
        .frame(width: frameWidth)
//            .background(Color.red)

    }
}

