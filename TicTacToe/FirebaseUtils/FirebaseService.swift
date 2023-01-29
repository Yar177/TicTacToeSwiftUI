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
        firebaseRefrence(.Game).whereField("player2", isEqualTo: "").whereField("player1", isNotEqualTo: userId).getDocuments { FIRQuerySnapshot, error in
            <#code#>
        }
    }
    
    func listeningToGameChanges(){
        
    }
    
    func createNewgame(with userId: String){
        
    }
    
    func quiteGame(){
        
    }
    
}
