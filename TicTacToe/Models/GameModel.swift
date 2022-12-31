//
//  GameModel.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/31/22.
//

import Foundation

struct Move: Codable{
    let isPlayer1:Bool
    let boardIndex:Int
    var indicator:String{
        return isPlayer1 ? "xmark" : "circle"
    }
}


struct  Game: Codable{
    let id:String
    var player1:String
    var player2:String
    
    var blockMoveForPlayerId:String
    var winnerId:String
    var rematchPlayerId:[String]
    
    var moves:[Move?]
}
