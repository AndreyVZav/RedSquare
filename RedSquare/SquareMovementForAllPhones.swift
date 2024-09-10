//
//  SquareMovementForAllPhones.swift
//  RedSquare
//
//  Created by Андрей Завадский on 19.07.2024.
//

import SwiftUI

struct SquareMovementForAllPhones: View {
    @State var bright = 1.0
    @State var colorless = 0.0
    @State var up = 1.0
    @State var down = 0.2
    var body: some View {
        
        squareUp().opacity(up)

        Button(action: {
            withAnimation {
                up = bright
                down = colorless
            }
            
        }, label: {
            Text("Вверх налево").font(.title2)
        }).buttonStyle(.borderedProminent)
        
        Button(action: {
            up = colorless
            down = bright
        }, label: {
            Text("Вниз направо").font(.title2)
        }).buttonStyle(.borderedProminent)
        squareDown().opacity(down)
        
        
    }


    
    struct squareUp: View {
        var body: some View {
            VStack {
                HStack {
                    Rectangle().fill(.red).frame(width: 100, height: 100)
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
    
    struct squareDown: View {
        var body: some View {
            VStack {
                Spacer()
                HStack {
                    Text("")
                    
                    Spacer()
                    Rectangle().fill(.red).frame(width: 100, height: 100)
                }
                
            }
            
            
        }
    }
}

#Preview {
    SquareMovementForAllPhones()
}
