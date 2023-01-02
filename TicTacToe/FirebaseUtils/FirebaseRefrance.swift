//
//  FirebaseRefrance.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 1/1/23.
//

import Firebase

enum FirebaseCollectionRefrence: String{
    case Game
}

func firebaseRefrence(_ collectionRef: FirebaseCollectionRefrence) -> CollectionReference {
    return Firestore.firestore().collection(collectionRef.rawValue)
}
