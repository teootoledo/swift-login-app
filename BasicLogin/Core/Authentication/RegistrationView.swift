//
//  RegistrationView.swift
//  BasicLogin
//
//  Created by Teo Toledo on 07/06/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
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
                        text: $fullname,
                        title: "Full Name",
                        placeholder: "John Doe"
                    ).autocapitalization(.words)
                    
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
                    
                    InputView(
                        text: $confirmPassword,
                        title: "Confirm Password",
                        placeholder: "Confirm your password",
                        isSecureField: true
                    ).autocapitalization(.none)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Sign up button
                
                Button {
                    print("Sign user up")
                } label: {
                    HStack {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(.primary)
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                // Already signed up
                
                Button {
                    print("User already has an account")
                } label: {
                    HStack(spacing: 5) {
                        Text("Already have an account?")
                        Text("Sign in")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
