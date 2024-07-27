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
            Spacer()
            NavigationLink("По координатам", value: MenuFlowRoute.move)
                .buttonStyle(.borderedProminent)
            NavigationLink("С помощью прозрачности", value: MenuFlowRoute.versionTwo).buttonStyle(.borderedProminent)
            NavigationLink("С помощью Bool", value: MenuFlowRoute.versionBool)
                .buttonStyle(.borderedProminent)
            Spacer()
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
