//
//  GameViewModel.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/31/22.
//

import SwiftUI

class GameViewModel: ObservableObject{
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
   @Published var game = Game(id: UUID().uuidString, player1: "player1", player2: "player2", blockMoveForPlayerId: "player2", winnerId: "", rematchPlayerId: [], moves: Array(repeating: nil, count: 9))
    
    private let winPatterns: Set<Set<Int>> = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    func processPlayerMove(for position: Int){
        if isPositionAvaliable(in: game.moves, forIndex: position){return}
        
        game.moves[position] = Move(isPlayer1: true, boardIndex: position)

        //block the user
        game.blockMoveForPlayerId = "player2"
        
        //check for win
        if checkForWin(for: true, in: game.moves){
            print("You have won!")
            return
        }
        //check for draw
        if checkForDraw(in: game.moves){
            print("Draw")
            return
        }
    }
    
    func isPositionAvaliable(in moves: [Move?], forIndex index: Int) -> Bool{
        return moves.contains(where: {$0?.boardIndex == index})
    }
    
    func checkForWin(for player1: Bool, in moves: [Move?]) -> Bool{
        let playerMoves = moves.compactMap {$0}.filter{$0.isPlayer1 == player1}
        let playerPositions = Set(playerMoves.map{$0.boardIndex})
        for pattern in winPatterns where pattern.isSubset(of: playerPositions){return true}
        return false
    }
    
    func checkForDraw(in moves: [Move?]) -> Bool{
        return moves.compactMap {$0}.count == 9
    }
    
    
}
