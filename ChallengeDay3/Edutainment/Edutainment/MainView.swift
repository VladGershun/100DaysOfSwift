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
        Text("Multiplication Is Fun!")
            .padding()
        
        QuestionView(question: question)
    }
}

struct QuestionView: View {
    @State var question: Question
    
    var body: some View {
        Text(question.question)
        HStack {
            Stepper("Min: \(question.firstValue)", value: $question.firstValue, in: 0...12)
            Stepper("Max: \(question.secondValue)", value: $question.secondValue, in: 0...12)
        }
        Text(question.answer, format: .number)
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
