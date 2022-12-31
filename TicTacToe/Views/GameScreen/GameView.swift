//
//  GameView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        GeometryReader { geometry in
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
                VStack{
                    LazyVGrid(columns: columns, spacing: 5){
                        ForEach(0..<9){i in
                            ZStack{
                                GameCircleView(proxy: geometry)
                                PlayerIndicatorView(systemImageName: "applelogo", proxy: geometry)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
