//
//  GameView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var mode
    
    @ObservedObject var viewModel: GameViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("Waiting for the player")
                    .font(.title)
                Button{
                    print("#function GameView Quit")
                    mode.wrappedValue.dismiss()
                    //dismiss()
                }label: {
                    GameButton(title: "Quit", backgroundColor: .red)
                }
                LoadingView()
                Spacer()
                VStack{
                    LazyVGrid(columns: viewModel.columns, spacing: 5){
                        ForEach(0..<9){i in
                            ZStack{
                                GameCircleView(proxy: geometry)
                                PlayerIndicatorView(systemImageName: viewModel.game.moves[i]?.indicator ?? "applelogo", proxy: geometry)
                            }
                            .onTapGesture {
                                print("tap on spot \(i)" , i)
                                viewModel.processPlayerMove(for: i)
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
        GameView(viewModel: GameViewModel())
    }
}
