//
//  TestovLineTwo.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct TestovLineTwo: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: height))
                path.addLine(to: CGPoint(x: width, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: 0))
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .black]),
                    center: .center,
                    startRadius: geometry.size.width * 0.01,
                    endRadius: geometry.size.width * 0.4
                )
            )
        }
        .frame(width: width, height: height)
    }
}

struct TestovLineTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestovLineTwo(width: 300, height: 300)
    }
}
