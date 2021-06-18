//
//  TestovLineOne.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct TestovLineOne: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: nearLine))
                path.addLine(to: CGPoint(x: nearLine, y: 0))
                path.addLine(to: CGPoint(x: width, y: farLine))
                path.addLine(to: CGPoint(x: farLine, y: height))
                
            
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .black]),
                    center: .center,
                    startRadius: geometry.size.width * 0.01,
                    endRadius: geometry.size.width * 0.4
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: nearLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: true
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .black]),
                    center: .topLeading,
                    startRadius: geometry.size.width * 0.01,
                    endRadius: geometry.size.width * 0.2
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: nearLine,
                    startAngle: .degrees(-90),
                    endAngle: .degrees(180),
                    clockwise: false
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .black]),
                    center: .bottomTrailing,
                    startRadius: geometry.size.width * 0.01,
                    endRadius: geometry.size.width * 0.2
                )
            )
            
        }
        .frame(width: width, height: height)
        .shadow(color: .red, radius: 10, x: 0, y: 0)
    }
}

struct TestovLineOne_Previews: PreviewProvider {
    static var previews: some View {
        TestovLineOne(width: 300, height: 300)
    }
}
