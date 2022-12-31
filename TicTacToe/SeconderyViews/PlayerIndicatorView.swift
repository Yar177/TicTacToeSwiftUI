//
//  PlayerIndicatorView.swift
//  TicTacToe
//
//  Created by Hoshiar Sher on 12/30/22.
//

import SwiftUI

struct PlayerIndicatorView: View {
    var systemImageName:String
    
    var proxy: GeometryProxy
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: proxy.size.width / 8,height:  proxy.size.width / 8)
            .foregroundColor(.white)
            .opacity(systemImageName == "applelogo" ? 0 : 1)
    }
}

//struct PlayerIndicatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayerIndicatorView(systemImageName: "applelogo")
//    }
//}
