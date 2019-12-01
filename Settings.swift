//
//  Settings.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/15/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct AppContentView: View {

    @State var acct = false
    @State var priv = false
    @State var notification = false
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
            else{
                Settings(acct: $acct, priv: $priv, notification: $notification)
            }
        }
    }
}

struct Settings: View {
    @Binding var acct: Bool
    @Binding var priv: Bool
    @Binding var notification: Bool
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
            Text("")
                .navigationBarTitle("November Budget", displayMode: .large)
            VStack(spacing: 10){
                Text("Settings").font(.custom("HelveticaNeue", size: 30))
                Spacer().frame(height: 20)
                Button(action:{
                    //action here
                    self.acct = true
                }) {
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 120, height: 50, alignment: .center)
                        Text("Account")
                        
                    }
                }
                Button(action:{
                    self.notification = true
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 120, height: 50, alignment: .center)
                        Text("Notifications")
                    }
                }
                Button(action:{
                    self.priv = true
                    
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 120, height: 50, alignment: .center)
                        Text("Privacy Policy")
                    }
                }
            }
            .font(.custom("HelveticaNeue", size: 16))
            .foregroundColor(Color.white)
            .position(x: 185, y: 300)
            HStack(spacing: 5){
                Button(action:{
                    //action here
                }) {
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 89, height: 60, alignment: .center)
                        Text("Home").foregroundColor(Color.white)
                        
                    }
                }
                Button(action:{
                    //action here
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 89, height: 60, alignment: .center)
                            Text("Budget").foregroundColor(Color.white)
                    }
                }
                Button(action:{
                    //action here
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 1.0)
                            .frame(width: 89, height: 60, alignment: .center)
                            Text("").foregroundColor(Color.white)
                    }
                }
                Button(action:{
                    //action here
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.init(red: 0.0, green: 0.29, blue: 0.21))
                            .border(Color.init(red: 0.0, green: 0.29, blue: 0.21), width: 1.0)
                            .frame(width: 89, height: 60, alignment: .center)
                        Text("Settings").foregroundColor(Color.white)
                        
                    }
                }
                
            }.position(x: 188.5, y: 615)
        }
        
    }
}


//struct Settings_Previews: PreviewProvider {
//    static var previews: some View {
//        Settings(acct: $acct, priv: $priv)
//    }
//}
