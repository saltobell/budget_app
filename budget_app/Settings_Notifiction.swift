//
//  Settings_Notifiction.swift
//  budget_app
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Settings_Notification: View {
    @State var notif = true
    var body: some View {
        NavigationView(){

            ZStack(){
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
                VStack(spacing: 10) {
                    Text("Notifications")
                        .font(.custom("HelveticaNeue", size: 30))
                        .frame(width: 300, height: 50, alignment: .center)
                    HStack(spacing: 20){
                        Text("Notifications")
                        Toggle(isOn: $notif) {
                            Text("")
                        }.padding()
                         if notif {
                             //Text("FaceID on")
                         }
                    }.frame(width: 300, height: 50, alignment: .center)
                }
                .font(.custom("HelveticaNeue", size: 20))
                .foregroundColor(Color.white)
                .position(x: 190, y: -40)
            }
        }
    }
}
