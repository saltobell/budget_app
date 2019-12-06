//
//  CreateAccount.swift
//  LoginPage
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 Gordon Huang. All rights reserved.
//

import SwiftUI
import Firebase

struct CreateAccount: View {
    @Binding var toCreate: Bool
    @State var FirstName: String = ""
    @State var LastName: String = ""
    @State var Username: String = ""
    @State var password: String = ""
    @State var CPassword: String = ""
    @State var email: String = ""
    @State var shown = false
    @State var msg = ""
    
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
            Text("User Information")
                .font(.custom("HelveticaNeue-Bold", size: 36))
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                .position(x: 185, y: 100)
            VStack(){
                HStack(){
                    Text("First Name")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Ex. John", text: $FirstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(){
                    Text("Last Name")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Ex. Doe", text: $LastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(){
                    Text("Email")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Ex. jdoe@hotmail.com", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(){
                    Text("Password")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Minimum 6 characters", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(){
                    Text("Confirm Password")
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    TextField("Retype your password", text: $CPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
            }
            .padding()
            .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
            
            Button(action: {
                if self.email == "" && self.password == ""{
                    self.msg = "Fill The Contents"
                    self.shown.toggle()
                    return
                }
                if self.password != self.CPassword {
                    self.msg = "Passwords do not match."
                    self.shown.toggle()
                    return
                }
                
                Auth.auth().createUser(withEmail: self.email, password: self.password) { (res, err) in
                    
                    if err != nil{
                        
                        print(err!.localizedDescription)
                        self.msg = err!.localizedDescription
                        self.shown.toggle()
                        return
                    }
                    
                    self.msg = "Account Created Successfully!"
                    self.shown.toggle()
                    
                }
            }){
                Text("Register")
            }
            .position(x: 185, y: 460)
            
            Button(action: {
                self.toCreate = false
            })
            {
                Text("Done")
            }
            .position(x: 185, y: 500)
        }
        .alert(isPresented: $shown) {
            
            return Alert(title: Text(self.msg))
        }
    }
}
