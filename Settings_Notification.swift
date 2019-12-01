//
//  Settings_Notification.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/21/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Settings_Notification: View {
    @State var notif = true
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                Text("Notifications")
                    .font(.custom("HelveticaNeue", size: 30))
                    .frame(width: 300, height: 50, alignment: .leading)
                Spacer(minLength: 60)
                HStack(spacing: 49){
                    Text("Notifications")
                    Toggle(isOn: $notif) {
                        Text("")
                    }.padding()
                     if notif {
                         //Text("FaceID on")
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

struct Settings_Notification_Previews: PreviewProvider {
    static var previews: some View {
        Settings_Notification()
    }
}
