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
    
    let game = Game(id: UUID().uuidString, player1: "player1", player2: "player2", blockMoveForPlayerId: "player2", winnerId: "", rematchPlayerId: [], moves: Array(repeating: nil, count: 9))
    
}
