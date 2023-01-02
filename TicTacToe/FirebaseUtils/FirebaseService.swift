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
    
}
