//
//  ContentView.swift
//  budget_app
//
//  Created by Sydney Altobell on 10/28/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct HomeContentView: View {
    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false


    var body: some View{
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
//        return Group{
//            if toTransactions{
//                Transactions()
//            }
//            else if toCategories{
//                CategoryContentView()
//            }
//            else if toAnalysis{
//                AnalysisContentView()
//            }
//            else{
//                HomePage(toTransactions: $toTransactions, toCategories: $toCategories, toAnalysis: $toAnalysis)
//            }
//        }
    }
}

struct HomePage: View {
    @State private var password: String = ""
    @Binding var toTransactions: Bool
    @Binding var toCategories: Bool
    @Binding var toAnalysis: Bool
    var body: some View {
       
        ZStack(){
            Group{
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 2){
                    Text("Total Budget:")
                    Text("$650")
                }
                .font(.custom("HelveticaNeue-Light", size: 20))
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                .position(x: 70, y: 64)
                    
                VStack(alignment: .trailing, spacing: 2){
                    Text("Remaining Budget:")
                    Text("$150")
                }
                .font(.custom("HelveticaNeue-Light", size: 20))
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                .position(x: 280, y: 64)
            
                VStack(){
                    Text("November Budget")
                }
                .font(.custom("HelveticaNeue-Bold", size: 24))
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                .position(x: 180, y: 150)
            }
            ZStack(){
                Rectangle()
                    .fill(Color.orange)
                    .border(Color.white, width: 1.0)
                    .position(x: 60, y: -50)
                    .frame(width: 180, height: 50, alignment: .center)
                Rectangle()
                    .fill(Color.gray)
                    .border(Color.white, width: 1.0)
                    .position(x: 110, y: -50)
                    .frame(width: 50, height: 50, alignment: .center)
            }

            VStack(spacing: 20){
                Text("")
                Text("")
                Button(action: {
                    self.toCategories = true
                }) {
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 25, alignment: .center)
                            Text("Categories")
                    }
                }
                
                Button(action: {
                    self.toTransactions = true
                }) {
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 25, alignment: .center)
                            Text("Transactions")
                    }
                }

                Button(action: {
                    self.toAnalysis = true
                }) {
                    ZStack(){
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 25, alignment: .center)
                            Text("Analysis")
                    }
                }
            }
            .font(.custom("HelveticaNeue-Light", size: 16))
            .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
            

//            HStack(){
//                Button(action: {
//                    // your action here
//                }) {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.white, width: 1.0)
//                            .frame(width: 80, height: 80, alignment: .center)
//                            Text("Home")
//                    }
//                }
//                Button(action: {
//                    // your action here
//                }) {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.white, width: 1.0)
//                            .frame(width: 80, height: 80, alignment: .center)
//                            Text("Financial Literacy")
//                    }
//                }
//                Button(action: {
//                    // your action here
//                }) {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.white, width: 1.0)
//                            .frame(width: 80, height: 80, alignment: .center)
//                            Text("Budget")
//                    }
//                }
//                Button(action: {
//                    // your action here
//                }) {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.white, width: 1.0)
//                            .frame(width: 80, height: 80, alignment: .center)
//                            Text("Settings")
//                    }
//                }
//            }
//            .position(x: 188, y: 600)
//            .font(.custom("HelveticaNeue-Light", size: 16))
//            .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        
        }
    }
}
