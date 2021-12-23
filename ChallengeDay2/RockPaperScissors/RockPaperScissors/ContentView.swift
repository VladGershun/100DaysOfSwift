//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Vlad Gershun on 12/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = ["Rock", "Paper", "Scissors"]
    @State private var currentMove = Int.random(in: 0...2)
    @State private var currentScore = 0
    @State private var winStatus = true
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Spacer()
            if winStatus {
                Text("Please WIN This Round!")
                    .font(.title2)
                    .foregroundColor(.green)
            } else {
                Text("Please LOSE This Round!")
                    .font(.title2)
                    .foregroundColor(.red)
            }
            Text("I Choose \(moves[currentMove])!")
                .padding()
                .font(.largeTitle)
            Spacer()
            ForEach(moves, id: \.self) { move in
                Button {
                    results(move)
                    winStatus.toggle()
                    currentMove = Int.random(in: 0...2)
                } label: {
                    Text(move)
                }
                .padding()
                .buttonStyle(.borderedProminent)
            }
            Spacer()
            Text("Current Score: \(currentScore)")
                .font(.title2)
                .foregroundColor(.indigo)
            Spacer()
        }
        .alert("You Won!", isPresented: $showAlert) {
            Button {
                //no-op
            } label: {
                Text("You Won!")
            }
        } message: {
            Text("New Game")
        }
    }
    
    func results(_ move: String) {
        gameOver()
        if winStatus {
            switch moves[currentMove] {
            case "Rock":
                if move == "Paper" {
                    currentScore += 1
                } else if move == "Rock" {
                    return
                } else if move == "Scissors" {
                    if currentScore > 0 {
                        currentScore -= 1
                    }
                }
            case "Paper":
                if move == "Paper" {
                    return
                } else if move == "Rock" {
                    if currentScore > 0 {
                        currentScore -= 1
                    }
                } else if move == "Scissors" {
                    currentScore += 1
                }
            case "Scissors":
                if move == "Paper" {
                    if currentScore > 0 {
                        currentScore -= 1
                    }
                } else if move == "Rock" {
                    currentScore += 1
                } else if move == "Scissors" {
                    return
                }
            default:
                return
            }
        }
        
        if !winStatus {
            switch moves[currentMove] {
            case "Rock":
                if move == "Paper" {
                    currentScore -= 1
                } else if move == "Rock" {
                    return
                } else if move == "Scissors" {
                    if currentScore > 0 {
                        currentScore += 1
                    }
                }
            case "Paper":
                if move == "Paper" {
                    return
                } else if move == "Rock" {
                    if currentScore > 0 {
                        currentScore += 1
                    }
                } else if move == "Scissors" {
                    currentScore -= 1
                }
            case "Scissors":
                if move == "Paper" {
                    if currentScore > 0 {
                        currentScore += 1
                    }
                } else if move == "Rock" {
                    currentScore -= 1
                } else if move == "Scissors" {
                    return
                }
            default:
                return
            }
        }
    }
    
    func gameOver() {
        if currentScore < 10 {
            showAlert = true
            currentScore = 0
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
