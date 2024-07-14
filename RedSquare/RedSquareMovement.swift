//
//  redSquareMovement.swift
//  RedSquare
//
//  Created by Андрей Завадский on 13.07.2024.
//

import SwiftUI

struct RedSquareMovement: View {
    // я понимаю, что не для всех телефонов будет работать)
    
    @State var squareX = 200
    @State var squareY = 350
    var left = 50
    var up = 50
    var right = 330
    var down = 670
    
    var body: some View {
        Rectangle().fill(.red).frame(width: 100, height: 100,alignment: .topLeading).position(x: CGFloat(squareX), y: CGFloat(squareY))
        
        Button(action: {
            squareX = right
            squareY = down
        }, label: {
            Text("Вниз направо").font(.title2)
        }).buttonStyle(.borderedProminent)
        
        Button(action: {
            squareX = left
            squareY = up
        }, label: {
            Text("Вввех налево").font(.title2)
        }).buttonStyle(.bordered)
    }
}



#Preview {
    RedSquareMovement()
}
