//
//  Settings.swift
//  budget_app
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct SettingsContentView: View {

    @State var acct = false
    @State var priv = false
    @State var notification = false
    @State var toLogin = false
    var body: some View {
        return Group {
            if acct {
                Settings_Account()
            }
            else if priv {
                Settings_Privacy()
            }
            else if notification{
                Settings_Notification()
            }
            else if toLogin{
                LoginView()
            }
            else{
                Settings(acct: $acct, priv: $priv, notification: $notification, toLogin: $toLogin)
            }
        }
    }
}

struct Settings: View {
    @Binding var acct: Bool
    @Binding var priv: Bool
    @Binding var notification: Bool
    @Binding var toLogin: Bool
    @State var selection: Int? = nil

    var body: some View {
        NavigationView(){
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
           
            VStack(spacing: 10){
                Spacer().frame(height: 60)

                Text("Settings").font(.custom("HelveticaNeue", size: 30))
                    .position(x: 190, y: 20)
                VStack(spacing: 20){
                    NavigationLink(destination: Settings_Account(), tag: 1, selection: $selection){
                        Button("Account"){
                            self.selection = 1
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                    NavigationLink(destination: Settings_Notification(), tag: 2, selection: $selection){
                        Button("Notifications"){
                            self.selection = 2
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                    NavigationLink(destination: Settings_Privacy(), tag: 3, selection: $selection){
                        Button("Privacy Policy"){
                            self.selection = 3
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
//                    NavigationLink(destination: LoginView(), tag: 4, selection: $selection){
//                        Button("Logout"){
//                            self.selection = 4
//                        }
//                        .frame(width: 130, height: 35, alignment: .center)
//                        .border(Color.white, width: 1.0)
//                    }
                    Button(action: {
                        self.toLogin = true
                        
                    }) {
                        Text("Logout")
                            .frame(width: 130, height: 35, alignment: .center)
                            .border(Color.white, width: 1.0)
                    }
                    
                }.position(x: 190, y: -10)
                
            }
            .font(.custom("HelveticaNeue-Light", size: 20))
            .foregroundColor(Color.white)
            .position(x: 190, y: 175)
//            HStack(spacing: 5){
//                Button(action:{
//                    //action here
//                }) {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 1.0)
//                            .frame(width: 89, height: 60, alignment: .center)
//                        Text("Home").foregroundColor(Color.white)
//
//                    }
//                }
//                Button(action:{
//                    //action here
//                }){
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 1.0)
//                            .frame(width: 89, height: 60, alignment: .center)
//                            Text("Budget").foregroundColor(Color.white)
//                    }
//                }
//                Button(action:{
//                    //action here
//                }){
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 1.0)
//                            .frame(width: 89, height: 60, alignment: .center)
//                            Text("").foregroundColor(Color.white)
//                    }
//                }
//                Button(action:{
//                    //action here
//                }){
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.init(red: 0.0, green: 0.29, blue: 0.21))
//                            .border(Color.init(red: 0.0, green: 0.29, blue: 0.21), width: 1.0)
//                            .frame(width: 89, height: 60, alignment: .center)
//                        Text("Settings").foregroundColor(Color.white)
//
//                    }
//                }
                
//            }.position(x: 188.5, y: 615)
        }
        }
    }
}
