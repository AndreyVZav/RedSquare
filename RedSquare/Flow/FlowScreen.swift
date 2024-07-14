//
//  FlowScreen.swift
//  RedSquare
//
//  Created by Андрей Завадский on 13.07.2024.
//

import SwiftUI
enum MenuFlowRoute: Hashable {
    case move
}
struct FlowScreen: View {
    var body: some View {
        NavigationStack {
            SquaresInCorners()
                .navigationDestination(for: MenuFlowRoute.self) { route in
                    switch route {
                    case .move:
                        RedSquareMovement()
                    }
                }
        }
    }
}

#Preview {
    FlowScreen()
}
