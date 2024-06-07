//
//  LoginView.swift
//  BasicLogin
//
//  Created by Teo Toledo on 07/06/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Image
                Image("Logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                // Form fields
                VStack(spacing: 24) {
                    InputView(
                        text: $email,
                        title: "Email Address",
                        placeholder: "name@example.com"
                    ).autocapitalization(.none)
                    
                    InputView(
                        text: $password,
                        title: "Password",
                        placeholder: "Enter your password",
                        isSecureField: true
                    ).autocapitalization(.none)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Sign in button
                
                ButtonView(
                    text: "SIGN IN",
                    icon: Image(systemName: "arrow.right")
                ) {
                    print("Sign user in")
                }
                
                Spacer()
                
                // Sign up button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 5) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
