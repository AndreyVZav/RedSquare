//
//  squaresInCorners.swift
//  RedSquare
//
//  Created by Андрей Завадский on 13.07.2024.
//

import SwiftUI

struct SquaresInCorners: View {
    //   @Binding var appFlowState: AppFlowState
    var body: some View {
        VStack {
            HStack {
                Rectangle().fill(.red).frame(width: 100, height: 100)
                Spacer()
                Rectangle().fill(.red).frame(width: 100, height: 100)
                
            }
            NavigationLink("Снова нажми на меня", value: MenuFlowRoute.versionTwo).buttonStyle(.borderedProminent)
            Spacer()
            NavigationLink("Нажми меня", value: MenuFlowRoute.move)
                .buttonStyle(.borderedProminent)
               
            HStack {
                Rectangle().fill(.red).frame(width: 100, height: 100)
                Spacer()
                Rectangle().fill(.red).frame(width: 100, height: 100)
            }
        }
    }
}
#Preview {
    SquaresInCorners()
}
