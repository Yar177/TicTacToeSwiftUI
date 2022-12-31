//
//  ContentView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var isGameViewPresented = false
    
    var body: some View {
        VStack {
            Button{
                isGameViewPresented.toggle()
            }label: {
                Text("Play")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
            }
        }
        .fullScreenCover(isPresented: $isGameViewPresented){
            GameView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
