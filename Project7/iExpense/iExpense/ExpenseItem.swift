//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Vlad Gershun on 1/10/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let name: String
    let type: String
    let amount: Double
    var id = UUID()
}
