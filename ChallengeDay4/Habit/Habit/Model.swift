//
//  Model.swift
//  Habit
//
//  Created by Vlad Gershun on 2/2/22.
//

import Foundation

struct Habit: Identifiable {
//    var id = UUID()
    var id: Int
    var name: String
}

struct SampleData {
    static let temps = [sample1, sample2, sample3]
    
    static let sample1 = Habit(id: Int.random(in: 0...1000), name: "Vlad")
    static let sample2 = Habit(id: Int.random(in: 0...1000), name: "Dan")
    static let sample3 = Habit(id: Int.random(in: 0...1000), name: "Jo")
}
