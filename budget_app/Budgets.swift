//
//  Budgets.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/7/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Budgets: Identifiable {
    var id: Int
    var name: String
    var isFull: Bool


    enum Category: String, CaseIterable, Codable, Hashable {
        case groceries = "Groceries"
        case gas = "Gas/Travel"
        case leisure = "Leisure"
        case restaurants = "Eating Out"
    }
}

