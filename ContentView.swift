//
//  ContentView.swift
//  budget_app
//
//  Created by Sydney Altobell on 10/28/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex: Int = 0
    @Binding var toTransactions: Bool
    @Binding var toCategories: Bool
    @Binding var toAnalysis: Bool
    @Binding var previousMonths: Bool
    @Binding var graph: Bool
    @Binding var acct: Bool
    @Binding var priv: Bool
    @Binding var notification: Bool
    var body: some View {
        TabView{
            HomePage(toTransactions: $toTransactions, toCategories: $toCategories, toAnalysis: $toAnalysis).tabItem { Group{
                    Image(systemName: "house.fill")
                    Text("Home")
                }}.tag(0)
            Categories(previousMonths: $previousMonths, graph: $graph).tabItem { Group{
                    Image(systemName: "rectangle.grid.1x2.fill")
                    Text("Budget")
                }}.tag(1)
            Settings(acct: $acct, priv: $priv, notification: $notification).tabItem { Group{
                    Image(systemName: "gear")
                    Text("Settings")
                }}.tag(2)
        }
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(tabIndex: $tabIndex)
//    }
//}
