//
//  GameSquareView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct GameCircleView: View {
    var proxy: GeometryProxy
    var body: some View {
        Circle()
            .foregroundColor(.cyan.opacity(0.7))
            .frame(width: proxy.size.width / 3 - 15, height: proxy.size.width / 3 - 15)
    }
}

//struct GameSquareView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameSquareView()
//    }
//}
