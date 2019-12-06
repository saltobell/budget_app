//
//  Forgot.swift
//  LoginPage
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 Gordon Huang. All rights reserved.
//

import SwiftUI
import Firebase

struct Forgot: View {
    @Binding var toForgot: Bool
    @State var email: String = ""
    @State var password: String = ""
    @State private var recover: String = ""
    @State private var showingModal = false
    @State private var showPasswordAlert = false
    @State var verifyEmail: Bool = true
    @State var errorText: String = ""
    
    var passwordResetAlert: Alert {
     Alert(title: Text("Reset your password"), message: Text("Please click the link in the password reset email sent to you"), dismissButton: .default(Text("Dismiss")){
         
           self.email = ""
           self.verifyEmail = true
           self.password = ""
           self.errorText = ""
     
         })
    }
    
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Forgot password")
                .font(.custom("HelveticaNeue-Bold", size: 24))
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
            }
            .position(x: 185, y: 100)
            VStack(spacing: 10){
                Text("If you forgot your password, please enter your email below")
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                HStack(){
                    Text("Email:")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Ex. JohnDoe123", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {
                    Auth.auth().sendPasswordReset(withEmail: self.email) { error in

                    if let error = error {
                        self.errorText = error.localizedDescription
                        return
                    }
                    self.showPasswordAlert.toggle()

                    }
                    
                })
                {
                    Text("Submit")
                }
                
                Text("")
                Button(action: {
                    self.toForgot = false
                })
                {
                    Text("Go Back")
                }
            }
        .alert(isPresented: $showPasswordAlert, content: {
            self.passwordResetAlert
        })
        .padding()
        }
    }
}
