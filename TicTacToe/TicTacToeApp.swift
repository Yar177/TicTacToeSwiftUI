//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI
import Firebase

@main
struct TicTacToeApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
