//
//  Settings_Privacy.swift
//  budget_app
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Settings_Privacy: View {
    
    var body: some View {
        NavigationView(){
            ZStack(){
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
                VStack(spacing: 60){
                    Text("Privacy Policy")
                        .font(.custom("HelveticaNeue", size: 30))
                    .frame(width: 300, height: 50, alignment: .center)
                    Text("Yeah, this is our privacy policy. We're college students so all this data is fake. :)")
                    .truncationMode(.tail)
                    .font(.custom("HelveticaNeue", size: 16))
                }
                .foregroundColor(Color.white)
                .position(x: 190, y: -40)
                
            }
        }
    }
}
