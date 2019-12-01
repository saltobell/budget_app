//
//  PreviousMonths.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/25/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct MonthBudgets: Identifiable {
    var id = UUID()
    var name: String
    var spent: Int
}
struct PreviousMonths: View {
    //TODO: connect backend to previous budgets
    let modelData: [MonthBudgets] = [
        MonthBudgets(name: "January", spent: 500),
        MonthBudgets(name: "February", spent: 500),
        MonthBudgets(name: "March", spent: 500),
        MonthBudgets(name: "April", spent: 500),
        MonthBudgets(name: "May", spent: 500),
        MonthBudgets(name: "June", spent: 500),
        MonthBudgets(name: "July", spent: 500),
        MonthBudgets(name: "August", spent: 500),
        MonthBudgets(name: "September", spent: 500),
        MonthBudgets(name: "October", spent: 500),
        MonthBudgets(name: "November", spent: 500),
        MonthBudgets(name: "December", spent: 500)]
    var body: some View {
        ZStack(){
            NavigationView(){
                List(modelData) { MonthBudgets in
                    NavigationLink(destination:
                        //TODO: change to pie chart
                    Text(MonthBudgets.name).font(.largeTitle)) {
                        HStack {
                            Text(verbatim: MonthBudgets.name)
                                .frame(width: 100, height: 10, alignment: .leading)
                            Text("Total Spent: $\(MonthBudgets.spent)")
                                .frame(width: 200, height: 10, alignment: .trailing)
                        }.font(.custom("Helvetica-Neue", size: 18))
                    }
                }.navigationBarTitle(Text("Previous Budgets"))
            }
        }
    }
}

struct PreviousMonths_Previews: PreviewProvider {
    static var previews: some View {
        PreviousMonths()
    }
}
