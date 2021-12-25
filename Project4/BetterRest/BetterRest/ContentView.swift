//
//  ContentView.swift
//  BetterRest
//
//  Created by Vlad Gershun on 12/24/21.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()

    }
    
//    func exampleDate() {
//        let tomorrow = Date.now.addingTimeInterval(86400)
//        let range = Date.now...tomorrow
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
