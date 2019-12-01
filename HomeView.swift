//
//  HomeView.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/7/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI



struct HomeView: View {
    var body: some View {
        
        NavigationView{
            Text("Home Content").navigationBarTitle("November Budget")    

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
