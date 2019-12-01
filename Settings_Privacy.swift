//
//  Settings_Privacy.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/21/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Settings_Privacy: View {
    
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 60){
                Text("Privacy Policy")
                    .font(.custom("HelveticaNeue", size: 30))
                    .frame(width: 300, height: 50, alignment: .leading)
                Text("Yeah, this is our privacy policy. We're college students so all this data is fake. :)")
                .truncationMode(.tail)
                .foregroundColor(Color.white)
                .font(.custom("HelveticaNeue", size: 16))
            }
            
        }
    }
}

struct Settings_Privacy_Previews: PreviewProvider {
    static var previews: some View {
        Settings_Account()
    }
}
