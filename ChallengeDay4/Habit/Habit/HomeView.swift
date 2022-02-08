//
//  ContentView.swift
//  Habit
//
//  Created by Vlad Gershun on 2/1/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HabitViewModel()
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sample) { habit in
                    Text(habit.name)
                }
            }
            .navigationTitle("Habit Tracker")
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddHabit = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddHabit) {
               AddHabitView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
