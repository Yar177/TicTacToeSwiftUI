//
//  ContentView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct HomeView: View {
    

    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            Button{
                viewModel.isGameViewPresented.toggle()
            }label: {
                GameButton(title: "Play", backgroundColor: .green )
            }
        }
        .fullScreenCover(isPresented: $viewModel.isGameViewPresented){
            GameView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
