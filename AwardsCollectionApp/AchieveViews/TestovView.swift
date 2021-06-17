//
//  TestovView.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 17.06.2021.
//

import SwiftUI

struct TestovView: View {
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
                
                //path.addRect(CGRect(x: 0, y: nearLine, width: 10, height: 10))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.black, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: height))
                path.addLine(to: CGPoint(x: width, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: 0))
            }
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: nearLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: true
                )
            }
            
        }
        .frame(width: width, height: height)
        
        
        
        
    }
}

struct TestovView_Previews: PreviewProvider {
    static var previews: some View {
        TestovView(width: 300, height: 300)
    }
}
