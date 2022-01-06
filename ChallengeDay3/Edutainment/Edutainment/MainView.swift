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
    @State private var userAnswer = 0
    @State private var answerArray = [Int]()
    @State private var message = ""
    @State private var animationAmount = 0.0
    
    func makeArray() {
        answerArray.append(question.answer)
        for _ in 0..<4 {
            if question.answer < 15 {
                answerArray.append(-Int.random(in: (question.answer - 10)...(question.answer - 4)))
                answerArray.shuffle()
            } else {
                answerArray.append(Int.random(in: (question.answer - 10)...(question.answer - 4)))
                answerArray.shuffle()
            }
        }
        print(answerArray)
    }
    
    var body: some View {
        VStack {
            Text("Multiplication Is Fun!")
                .font(.title)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
            
            QuestionView(question: question)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding()
                .task {
                    makeArray()
                }
                 
            
            HStack {
                ForEach(answerArray, id: \.self) { i in
                    Spacer()
                    Button {
                        if i == question.answer {
                            withAnimation {
                                animationAmount += 360
                            }
                            message = "Correct!"
                        } else {
                            message = "Try Again!"
                        }
                    } label: {
                        Text("\(i)")
                            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
                    }
                    .buttonStyle(.borderedProminent)
                    .onTapGesture {
                        makeArray()
                    }
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            
            Text(message)
                .font(.title)
                .foregroundColor(.white)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
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
