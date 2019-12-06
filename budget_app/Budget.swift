//
//  Budgets.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/7/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct BudgetContentView: View {
    @Binding var total: String
    @Binding var remaining: String
    @Binding var food: String
    @Binding var housing: String
    @Binding var utilities: String
    @Binding var transportation: String
    @Binding var entertainment: String
    @Binding var school: String
    @Binding var other: String
    var body: some View{
        Budget(total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other)
    }
}

//struct LabelTextField: View{
//
//    var label: String
//    @State var input: String
//
//    var body: some View {
//        VStack(alignment: .leading){
//            Text(label).font(.headline)
//            TextField("$  .  ", text: $input)
//                .padding(.all)
//                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
//
//        }.padding(.horizontal, 15)
//    }
//}
struct RoundedButton : View {

    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false
    
    @Binding var total: String
    @Binding var remaining: String
    @Binding var food: String
    @Binding var housing: String
    @Binding var utilities: String
    @Binding var transportation: String
    @Binding var entertainment: String
    @Binding var school: String
    @Binding var other: String
    
    @State var selection: Int?
    
    var body: some View {
        NavigationLink(destination: HomePage(toTransactions: $toTransactions, toCategories: $toCategories, toAnalysis: $toAnalysis, total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other )) {
            Button("Save"){
                self.selection = 1
            }.navigationBarBackButtonHidden(true)
        }
//        Button(action: {
//            HomeContentView(total: self.total, remaining: self.remaining, food: self.food, housing: self.housing, utilities: self.utilities, transportation: self.transportation, entertainment: self.entertainment, school: self.school, other: self.other)
//        }) {
//            HStack {
//                Spacer()
//                Text("Save")
//                    .font(.headline)
//                    .foregroundColor(Color.white)
//                Spacer()
//            }
//        }
//        .padding(.vertical, 10.0)
//        .background(Color(red: 0.0, green: 0.29, blue: 0.21))
//        .padding(.horizontal, 50)
    }
}
struct Budget: View {
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
                List(){
                    VStack(alignment: .leading, spacing: 15){
                        HStack(alignment: .top, spacing: 102){
                            Text("Total").font(.headline)
                            TextField("$  .  ", text: $total)
                                .padding(.all)
                                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 101){

                        Text("Food").font(.headline)
                        TextField("$  .  ", text: $food)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 75){

                        Text("Housing").font(.headline)
                        TextField("$  .  ", text: $housing)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 81){

                        Text("Utilities").font(.headline)
                        TextField("$  .  ", text: $utilities)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 23){

                        Text("Transportation").font(.headline)
                        TextField("$  .  ", text: $transportation)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 27){

                        Text("Entertainment").font(.headline)
                        TextField("$  .  ", text: $entertainment)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 86){

                        Text("School").font(.headline)
                        TextField("$  .  ", text: $school)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }
                        HStack(alignment: .top, spacing: 95){

                        Text("Other").font(.headline)
                        TextField("$  .  ", text: $other)
                            .padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
                        }

                        RoundedButton(total: $total, remaining: $remaining, food: $food, housing: $housing, utilities: $utilities, transportation: $transportation, entertainment: $entertainment, school: $school, other: $other).padding(.top, 20)

                    }.padding(.horizontal, 15)
                    .listRowInsets(EdgeInsets())
                }.navigationBarTitle(Text("Set Budget"))
                .navigationBarBackButtonHidden(true)

            }
            
        }
    }
}

