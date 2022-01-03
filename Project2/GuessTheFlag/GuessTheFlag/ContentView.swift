//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Vlad Gershun on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var currentScore = 0
    @State private var gameInfo = "You Won!"
    @State private var gameOver = false
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var animationAmount = 0.0
    
    @State private var isCorrect = false
    
    @State private var fadeOut = false
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess The Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap The Flag Of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            withAnimation {
                                animationAmount += 360
                                flagTapped(number)
                            }
                            
                        } label: {
                            FlagImage(countries: countries, number: number)
                        }
                        .rotation3DEffect(.degrees(self.isCorrect && correctAnswer == number ? animationAmount : 0), axis: (x: 0, y:1, z: 0))
                        .opacity(self.fadeOut && correctAnswer != number ? 0.25 : 1)
        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(currentScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
            
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(currentScore)")
        }
        .alert(gameInfo, isPresented: $gameOver) {
            Button("New Game", action: resetGame)
        } message: {
            Text("Your score is \(currentScore)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            self.isCorrect = true
            self.fadeOut = true
            scoreTitle = "Correct"
            currentScore += 1
        } else {
            scoreTitle = "Wrong, you chose \(countries[number])"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        self.fadeOut = false
        self.isCorrect = false
        resetGame()
    }
    
    func resetGame() {
        if currentScore == 8 {
            currentScore = 0
            gameOver = true
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct FlagImage: View {
    var countries = [""]
    let number: Int
    var body: some View {
        Image(countries[number])
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 1)
    }
}
