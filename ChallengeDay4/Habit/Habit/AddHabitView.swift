//
//  AddHabitView.swift
//  Habit
//
//  Created by Vlad Gershun on 2/4/22.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            Form {
                
            }
            .navigationTitle("Add New Habit")
            .toolbar {
                Button("Save") {
                    dismiss()
                }
            }
        }

    }
}

struct AddHabitView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitView()
    }
}
