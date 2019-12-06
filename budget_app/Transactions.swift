//
//  SwiftUIView.swift
//  budget_app
//
//  Created by Gordon Huang on 11/13/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Table: Identifiable {
    let id: Int

    let date: String
    let transaction: String
    let cost: String
    
}

struct Transactions: View {
    @State private var showingModal = false
    @State private var transaction: String = ""
    @State private var date: String = ""
    @State private var cost: String = ""
    @State private var count: Int = 1
    @State private var create = false
    @State private var showingFailed = false
    
//    @State var TableList = [
//        Table(id: 0, date: "11/21", transaction: "taco bell", cost: 12.21)
//    ]
    @State private var Table2 = [String]()
    
    
    var categories = ["Food", "Housing", "Utilities", "Transportation", "Entertainment", "School", "Other"]
    
    @State private var selectedCategory = 0
    
var body: some View {
    ZStack {
        Color.init(red: 0.0, green: 0.29, blue: 0.21)
        .edgesIgnoringSafeArea(.all)
        
//        VStack(alignment: .leading, spacing: 2){
//            Text("Total Budget:")
//            Text("$650")
//        }
//        .font(.custom("HelveticaNeue-Light", size: 20))
//        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//        .position(x: 65, y: -20)
//
//        VStack(alignment: .trailing, spacing: 2){
//            Text("Remaining Budget:")
//            Text("$150")
//        }
//        .font(.custom("HelveticaNeue-Light", size: 20))
//        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//        .position(x: 285, y: -20)
                    
//        VStack(alignment: .center){
//            Text("Monthly")
//            Text("Transactions")
//        }
//        .font(.custom("HelveticaNeue-Bold", size: 24))
//        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//        .position(x: 190, y: 25)
            
//        ZStack(){
//            Text("Sort By")
//                .font(.custom("HelveticaNeue", size: 16))
//                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//                .position(x: 40, y: 168)
//        }
        
        Button(action: {
            self.showingModal = true
        }) {
            ZStack(){
                Rectangle()
                    .fill(Color.white)
                    .border(Color.black, width: 1.0)
                    .frame(width: 30, height: 30, alignment: .center)
                Image(systemName: "plus")
                    .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
            }
        }

        .padding()

        .position(x: 340, y: 95)
        
//        ScrollView {
//            VStack(){
//                if create {
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 1.0)
//                            .frame(width: 300, height: 50, alignment: .leading)
//                        HStack(){
//                            Text("Date: \(date)")
//                            Text("\(transaction)")
//                            Text("$\(cost)")
//                            Text("\(categories[selectedCategory])")
//                        }
//                    }
//                }
//            }
//        }.position(x: 190, y: 520)
        
//        NavigationView{
//            List(TableList) { ts in
//                HStack(){
//                    Text(ts.self.date)
//                    Text(ts.self.transaction)
//                }
//            }
//        }
//        .navigationBarTitle("Transactions")
        NavigationView{
            VStack(){
                Button(action: {
                    self.showingModal = true
                })
                {
                    ZStack(){
                        Rectangle()
                            .fill(Color.white)
                            .border(Color.black, width: 1.0)
                            .frame(width: 30, height: 30, alignment: .center)
                        Image(systemName: "plus")
                            .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
                    }
                }
                
                List(Table2, id: \.self) {
                    Text($0)
                }
            }
        }
        .navigationBarTitle("Transactions")
        
        
        if $showingModal.wrappedValue {
                        // But it will not show unless this variable is true
            ZStack {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.vertical)

                VStack(spacing: 2){
                    Text("Transaction")
                        .font(.custom("HelveticaNeue-Light", size: 20))
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                    VStack(){
                        HStack {
                            Text("Name")
                            TextField("Ex. The Boiling Crab", text: $transaction)
                        }
                        HStack {
                            Text("Date")
                            TextField("Ex. 11/21", text: $date)
                        }
                        HStack {
                            Text("Cost")
                            TextField("Ex. 50.62", text: $cost)
                        }
                    }.padding()
                    
//                    NavigationView {
//                        Form {
//                            Section {
//                                Picker(selection: $selectedCategory, label: Text("Category"),
//                                    content: {
//                                        Text("Food").tag(0)
//                                        Text("Housing").tag(1)
//                                        Text("Utilities").tag(2)
//                                        Text("Transportation").tag(3)
//                                        Text("Entertainment").tag(4)
//                                        Text("School").tag(5)
//                                        Text("Other").tag(6)
//                                    })
//                                }
//                            }
//                        }

                    HStack(){
                        Button(action: {
                            if self.transaction.isEmpty || self.date.isEmpty || self.cost.isEmpty {
                                self.showingFailed = true
                                return
                            }
                            else {
                                self.showingModal = false
                                //Do something with string first
                                //self.create = true
                                self.count += 1
                                let combined = self.date + " " + self.transaction + " $" + self.cost
                                self.Table2.append(combined)
                                self.transaction = ""
                                self.date = ""
                                self.cost = ""
                            }
                        }) {
                            Text("Done")
                        }.padding()

                        Button(action: {
                            self.showingModal = false
                            self.transaction = ""
                            self.date = ""
                            self.cost = ""
                        }) {
                            Text("Discard")
                        }.padding()
                    }
                }
                .frame(width: 300, height: 500)
                .background(Color.white)
                .cornerRadius(20).shadow(radius: 20)
                }
                if $showingFailed.wrappedValue {
                    VStack(){
                        Text("Missing one or more entries.")
                            .foregroundColor(.red)
                    }
                    .position(x: 185, y: 500)
                }
            }
        }
    }
    
//    func addTransaction(){
//        if let newTransaction = Table(id: count, date: date, transaction: name, cost: cost){
//        }
//    }
}

