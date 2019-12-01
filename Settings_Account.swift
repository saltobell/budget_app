//
//  Settings_Account.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/18/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Settings_Account: View {
    
    @State var username: String = ""
    @State var fullName: String = ""
    @State var dob: String = ""
    @State var faceid = true

    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                Text("Account")
                    .font(.custom("HelveticaNeue", size: 30))
                    .frame(width: 300, height: 50, alignment: .leading)
                Spacer(minLength: 60)
                HStack(spacing: 49){
                    Text("Username: ")
                    TextField("username", text: $username)
                        .border(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle.init())
                }
                HStack(spacing: 50){
                   Text("Full Name: ")
                    TextField("name", text: $fullName)
                        .border(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle.init())

                }
                HStack(spacing: 31){
                   Text("Date of Birth: ")
                   TextField("birthdate", text: $dob)
                   .border(Color.white)
                   .textFieldStyle(RoundedBorderTextFieldStyle.init())

                }
                HStack(spacing: 10){
                   Toggle(isOn: $faceid) {
                       Text("Face ID")
                   }.padding()
                    if faceid {
                        //Text("FaceID on")
                    }
                }
                Button(action:{
                    //action here
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 150, height: 40, alignment: .center)
                        Text("Reset Password")
                    }
                }

            }
            .font(.custom("HelveticaNeue", size: 16))
            .foregroundColor(Color.white)
            .frame(width: 230, height: 300, alignment: .leading)
            .position(x: 150, y: 250)
            
        }
    }
}

struct Settings_Account_Previews: PreviewProvider {
    static var previews: some View {
        Settings_Account()
    }
}
