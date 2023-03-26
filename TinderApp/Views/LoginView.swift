//
//  LoginView.swift
//  TinderApp
//
//  Created by USER on 2023/02/26.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
//            Color.red
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .center, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Text("LOGIN")
                    .font(.system(size: 80, weight: .heavy))
                    .foregroundColor(.white)
                TextField("email", text: self.$email)
                    .asSignInTextField()
                TextField("password", text: self.$password)
                    .asSignInTextField()
                Button(action: {
                    
                }, label: {
                    Text("ログイン")
                        .foregroundColor(.white)
                })
                .frame(width: 200, height: 50)
                // #E3324F
                .background(Color.pink)
                .cornerRadius(10)
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    Text("アカウントをお持ちでない方はこちら")
                        .font(.system(size: 15))
                })
            }
            .padding(.horizontal, 50)
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
