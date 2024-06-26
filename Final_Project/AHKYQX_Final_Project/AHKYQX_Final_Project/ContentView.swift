//
//  ContentView.swift
//  AHKYQX_Final_Project
//
//  Created by Andrew Kim on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var board = Array(repeating: Array(repeating: "", count: 3), count: 3)
    @State private var currentPlayer = "X"
    @State private var winner = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Tic-Tac-Toe")
                    .font(.title)
                Text("Multiplayer Mode")
                    .font(.callout)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding()
                Text(winner == "" ? "Current Player: \(currentPlayer)" : (winner == "Tie" ? "It's a Tie!" : "Winner: \(winner)"))
                    .padding()

                // Create the board
                ForEach(0..<3) { row in
                    HStack {
                        ForEach(0..<3) { col in
                            Button(action: {
                                if board[row][col] == "" && winner == "" {
                                    board[row][col] = currentPlayer
                                    checkWinner()
                                    currentPlayer = currentPlayer == "X" ? "O" : "X"
                                }
                            }) {
                                Text(board[row][col])
                                    .font(.largeTitle)
                                    .foregroundColor(board[row][col] == "O" ? .orange : .black)
                                    .frame(width: 70, height: 70)
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding()

                Button("Reset") {
                    resetGame()
                }
                .padding()

                // Button to change to Singleplayer view
                NavigationLink(destination: SinglePlayerView()) {
                    Text("Click for Singleplayer Mode")
                        .font(.footnote)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }

    // Check for a winner
    func checkWinner() {
        for i in 0..<3 {
            if board[i][0] != "" && board[i][0] == board[i][1] && board[i][1] == board[i][2] {
                winner = board[i][0]
                return
            }
            if board[0][i] != "" && board[0][i] == board[1][i] && board[1][i] == board[2][i] {
                winner = board[0][i]
                return
            }
        }

        if board[0][0] != "" && board[0][0] == board[1][1] && board[1][1] == board[2][2] {
            winner = board[0][0]
            return
        }

        if board[0][2] != "" && board[0][2] == board[1][1] && board[1][1] == board[2][0] {
            winner = board[0][2]
            return
        }

        // Check for a tie
        if !board.joined().contains("") {
            winner = "Tie"
        }
    }

    func resetGame() {
        board = Array(repeating: Array(repeating: "", count: 3), count: 3)
        currentPlayer = "X"
        winner = ""
    }
}

#Preview {
    ContentView()
}
