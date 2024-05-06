//
//  SinglePlayerView.swift
//  AHKYQX_Final_Project
//
//  Created by Andrew Kim on 5/5/24.
//

import SwiftUI

struct SinglePlayerView: View {
    @State private var board = Array(repeating: Array(repeating: "", count: 3), count: 3)
    @State private var currentPlayer = "X"
    @State private var winner = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Tic-Tac-Toe")
                    .font(.title)
                Text("Singleplayer Mode")
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
                                    // Switch to computer's turn after human plays
                                    if winner == "" {
                                        computerTurn()
                                        currentPlayer = currentPlayer == "X" ? "O" : "X"
                                    }
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

    func computerTurn() {
        var emptySpots: [(Int, Int)] = []
        for row in 0..<3 {
            for col in 0..<3 {
                if board[row][col] == "" {
                    emptySpots.append((row, col))
                }
            }
        }

        if !emptySpots.isEmpty {
            let randomIndex = Int.random(in: 0..<emptySpots.count)
            let (row, col) = emptySpots[randomIndex]
            board[row][col] = "O" // Computer plays as 'O'
            checkWinner() // Check if the computer has won
        }
    }
}


#Preview {
    SinglePlayerView()
}
