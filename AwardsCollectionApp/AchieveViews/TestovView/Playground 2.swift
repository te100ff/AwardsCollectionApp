//
//  Playground 2.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct Playground_2: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: size))
                path.addCurve(
                    to: CGPoint(x: 0, y: size),
                    control1: CGPoint(x: nearLine, y: nearLine),
                    control2: CGPoint(x: farLine, y: farLine)
                )
                
            }
            .stroke(Color.red, lineWidth: 4)
            
        }
        .frame(width: width, height: height)
    }
}

    struct Playground_2_Previews: PreviewProvider {
        static var previews: some View {
            Playground_2(width: 300, height: 300)
        }
    }
