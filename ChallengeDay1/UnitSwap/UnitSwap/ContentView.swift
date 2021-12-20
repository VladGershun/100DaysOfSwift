//
//  ContentView.swift
//  UnitSwap
//
//  Created by Vlad Gershun on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = 0.0
    @FocusState private var inputUnitFocus: Bool
    @State private var unit = "Sec"
    @State private var finalUnit = "Sec"
    
    let units = ["Sec", "Min", "Hour", "Day"]
    
    var initialValue: Double {
        switch unit {
        case "Sec":
            return inputUnit
        case "Min":
            return inputUnit * 60.0
        case "Hour":
            return inputUnit * 3600.0
        case "Day":
            return inputUnit * 86400.0
        default:
            return 0
        }
    }
    
    var finalValue: Double {
        switch finalUnit {
        case "Sec":
            return initialValue
        case "Min":
            return initialValue / 60.0
        case "Hour":
            return initialValue / 3600.0
        case "Day":
            return initialValue / 86400.0
        default:
            return 0
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Unit", value: $inputUnit, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputUnitFocus)
                    
                    Picker("Units", selection: $unit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                } header: {
                    Text("Enter Unit")
                }
                
                Section {
                    Text(finalValue, format: .number)
                    
                    Picker("Units", selection: $finalUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                } header: {
                    Text("Converted Value")
                }
                
            }
            .navigationTitle("UnitSwap")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        inputUnitFocus = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
