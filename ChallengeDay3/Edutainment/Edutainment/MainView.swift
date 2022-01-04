//
//  ContentView.swift
//  Edutainment
//
//  Created by Vlad Gershun on 1/3/22.
//

import SwiftUI

struct Question {
    var firstValue = 1
    var secondValue = 1
    var question: String {
        "What Is \(firstValue) X \(secondValue)"
    }
    var answer: Int {
        firstValue * secondValue
    }
}


struct MainView: View {
    @State private var question = Question()
    
    var body: some View {
        NavigationView {
            Section {
                QuestionView(question: question)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .padding()
            }
            .navigationTitle("Multiplication Is Fun!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            )
        }
    }
    
}

struct QuestionView: View {
    @State var question: Question
    
    var body: some View {
        
        VStack {
            Picker("First Value", selection: $question.firstValue) {
                ForEach(0..<13) {
                    Text($0, format: .number)
                }
            }
            .pickerStyle(.segmented)
            
            Divider()
            
            Picker("Second Value", selection: $question.secondValue) {
                ForEach(0..<13) {
                    Text($0, format: .number)
                }
            }
            .pickerStyle(.segmented)
            Divider()
            HStack {
                Text("What Is")
                Image(systemName: "\(question.firstValue).circle")
                Text("x")
                Image(systemName: "\(question.secondValue).circle")
                Text("?")
            }
            .font(.title)
        }
        .padding()
        
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
