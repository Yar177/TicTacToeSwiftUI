//
//  GameView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            Text("Waiting for the player")
            Button{
                print("#function GameView Quit")
                dismiss()
            }label: {
                GameButton(title: "Quit", backgroundColor: .red)
            }
            Text("Loading View")
            Spacer()
            Text("Game area here")
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
