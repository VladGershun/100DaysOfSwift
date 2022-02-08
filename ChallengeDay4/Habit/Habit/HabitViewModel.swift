//
//  ViewModel.swift
//  Habit
//
//  Created by Vlad Gershun on 2/2/22.
//

import Foundation

final class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    let sample = SampleData.temps
}
