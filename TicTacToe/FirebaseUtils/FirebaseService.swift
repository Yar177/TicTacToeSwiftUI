//
//  FirebaseService.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 1/1/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import Combine

class FirebaseService: ObservableObject{
    static let shared = FirebaseService()
    @Published var game: Game!
    
    init(){}
    
    func createOnlineGame(){
        
    }
    
    func startGame(with userId:String){
        //TODO: check if there is a game to join if not create a game
        firebaseRefrence(.Game).whereField("player2", isEqualTo: "").whereField("player1", isNotEqualTo: userId).getDocuments { querySnapshot, error in
            if error != nil {
                print("Error starting game ", error?.localizedDescription)
                //create new game
                self.createNewgame(with: userId)
                return
            }
            if let gameData = querySnapshot?.documents.first{
                self.game = try? gameData.data(as: Game.self)
                self.game.player2 = userId
                self.game.blockMoveForPlayerId = userId
                
                self.updateGame(self.game)
                self.listeningToGameChanges()
            }else{
                self.createNewgame(with: userId)
            }
        }
    }
    
    func listeningToGameChanges(){
        
    }
    
    func createNewgame(with userId: String){
        
    }
    
    func updateGame(_ game: Game){
        
    }
    
    func quiteGame(){
        
    }
    
}
