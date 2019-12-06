//
//  ContentView.swift
//  budget_app
//
//  Created by Sydney Altobell on 10/28/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct HomeTabView: View {
    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false
    
    @State var total: String
    @State var remaining: String
    @State var food: String
    @State var housing: String
    @State var utilities: String
    @State var transportation: String
    @State var entertainment: String
    @State var school: String
    @State var other: String

    var body: some View{
        TabView{
            HomeContentView(toTransactions: toTransactions, toCategories: toCategories, toAnalysis: toAnalysis, total: total, remaining: remaining, food: food, housing: housing, utilities: utilities, transportation: transportation, entertainment: entertainment, school: school, other: other).tabItem { Group{
                    Image(systemName: "house.fill")
                    Text("Home")
                }}.tag(0)
            BudgetContentView(total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other).tabItem { Group{
                    Image(systemName: "rectangle.grid.1x2.fill")
                    Text("Set Budget")
                }}.tag(1)
            FinancialLiteracy().tabItem { Group{
                Image(systemName: "eyeglasses")
                Text("Financial Literacy")
            }}.tag(2)
            SettingsContentView(acct: acct, priv: priv, notification: notification).tabItem { Group{
                    Image(systemName: "gear")
                    Text("Settings")
                }}.tag(3)
        }
        
    }
}
struct goHome: View{
    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false
    
    @State var total: String
    @State var remaining: String //= total - spent
    @State var food: String
    @State var housing: String
    @State var utilities: String
    @State var transportation: String
    @State var entertainment: String
    @State var school: String
    @State var other: String

    
    var body: some View{
        HomePage(toTransactions: $toTransactions, toCategories: $toCategories, toAnalysis: $toAnalysis, total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other )
    }
    
    
}
struct HomeContentView: View{
    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false
    
    @State var total: String
    @State var remaining: String
    @State var food: String
    @State var housing: String
    @State var utilities: String
    @State var transportation: String
    @State var entertainment: String
    @State var school: String
    @State var other: String

    var body: some View{
        return Group{
         if toTransactions{
            Transactions()
         }
         else if toCategories{
            CategoryContentView()
         }
         else{
            HomePage(toTransactions: $toTransactions, toCategories: $toCategories, toAnalysis: $toAnalysis, selection: 0, total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other)
        }
        }
    }
        
}

struct HomePage: View {
    //@State private var password: String = ""
    @Binding var toTransactions: Bool
    @Binding var toCategories: Bool
    @Binding var toAnalysis: Bool
    @State var selection: Int? = nil
    
    @Binding var total: String
    @Binding var remaining: String
    @Binding var food: String
    @Binding var housing: String
    @Binding var utilities: String
    @Binding var transportation: String
    @Binding var entertainment: String
    @Binding var school: String
    @Binding var other: String

    var body: some View {
        NavigationView(){
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
            .edgesIgnoringSafeArea(.all)
                
            VStack(spacing: 20){
                Spacer()
                    Text("November Budget")
                        .font(.custom("HelveticaNeue", size: 24))
                        .position(x: 190, y: 20)
                        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                    ZStack(){
                            Rectangle()
                                .fill(Color.orange)
                                .border(Color.white, width: 1.0)
                                .position(x: 75, y: -90)
                                .frame(width: 180, height: 50, alignment: .leading)
                            Rectangle()
                                .fill(Color.gray)
                                .border(Color.white, width: 1.0)
                                .position(x: 105, y: -90)
                                .frame(width: 50, height: 50, alignment: .leading)
                    }
                VStack(spacing: 20){
                    NavigationLink(destination: CategoryContentView(), tag: 1, selection: $selection) {
                        Button("View Budget") {
                            self.selection = 1
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                    
                    NavigationLink(destination: Transactions(), tag: 2, selection: $selection) {
                        Button("Transactions") {
                            self.selection = 2
                        }.frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                    
                }.position(x: 190, y: -20)

                
            }
            .font(.custom("HelveticaNeue-Light", size: 20))
            .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
            .position(x: 190, y: 175)
            }.navigationBarItems(trailing:
                HStack(spacing: 100){
                    VStack(alignment: .leading, spacing: 2){
                        Text("Total Budget:")
                        Text(total)
                    }
                    VStack(alignment: .trailing, spacing: 2){
                        Text("Remaining Budget:")
                        Text(remaining)
                    }
                }.font(.custom("HelveticaNeue-Light", size: 18))
                    .frame(width: 900, height: 50, alignment: .center)
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
            )
        }
    }
}
