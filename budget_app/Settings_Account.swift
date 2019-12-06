//
//  Settings_Account.swift
//  budget_app
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI



struct Settings_Account: View {
    
    @State var username: String = ""
    @State var fullName: String = ""
    @State var dob: String = ""
    @State var faceid = true
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                Text("Account")
                    .font(.custom("HelveticaNeue", size: 30))
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                Spacer(minLength: 50)
                HStack(spacing: 90){
                    Text("Email: ")
                    TextField("email", text: $username)
                        .foregroundColor(.init(red: 0.8, green: 0.8, blue: 0.8))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(spacing: 50){
                   Text("Full Name: ")
                    TextField("name", text: $fullName)
                        .foregroundColor(.init(red: 0.8, green: 0.8, blue: 0.8))
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                HStack(spacing: 10){
                   Toggle(isOn: $faceid) {
                       Text("Face ID")
                   }.padding()
                    if faceid {
                        //enable faceid on login
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
                        Text("Show Password")
                    }
                }

            }
            .font(.custom("HelveticaNeue-Light", size: 20))
            .frame(width: 300, height: 35, alignment: .center)
            .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
            .position(x: 190, y: 175)
            
        }
        
    }
}



