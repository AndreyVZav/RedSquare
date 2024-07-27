//
//  SquareMovementForBool.swift
//  RedSquare
//
//  Created by Андрей Завадский on 27.07.2024.
//

import SwiftUI

struct SquareMovementForBool: View {
    @State var inUp = false
    @State var inRith = true
    var body: some View {
        VStack {
            VStack {
                if !inUp {
                    Spacer()
                }
                HStack {
                    if !inRith {
                        Spacer()
                    }
                    Color.yellow.frame(width: 100, height: 100)
                    if inRith {
                        Spacer()
                    }
                    
                }
                
                if inUp {
                    Spacer()
                }
                Button("LeftRight") {
                    inRith = !inRith
                }
                Button("UpDown") {
                    inUp = !inUp
                }
                
            }
            
            
        }
    }
}

#Preview {
    SquareMovementForBool()
}
