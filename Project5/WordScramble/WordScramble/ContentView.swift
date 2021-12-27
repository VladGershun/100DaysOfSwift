//
//  ContentView.swift
//  WordScramble
//
//  Created by Vlad Gershun on 12/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Text("Hello, world!")
                
                Text("Hello, world!")
            }
            
            Section("Section 2") {
                Text("Hello, world!")
            }

        }
        .listStyle(.grouped)

    }

    func loadFile() {
//        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
//            if let fileContents try? String(contentsOf: fileURL) {
//                fileContents
//            }
//        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
