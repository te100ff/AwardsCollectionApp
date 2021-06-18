//
//  PlaygroundView.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct PlaygroundView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            //            Path { path in
            //                path.move(to: CGPoint(x: 0, y: middle))
            //                path.addQuadCurve(
            //                    to: CGPoint(x: width, y: middle),
            //                    control: CGPoint(x: middle, y: -middle)
            //                )
            //            }
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: middle - nearLine),
                    radius: middle/2,
                    startAngle: .degrees(45),
                    endAngle: .degrees(135),
                    clockwise: true
                )
            }
            
            Path { path in
                path.addRect(
                    CGRect(
                        x: middle - size/40,
                        y: middle,
                        width: size/20,
                        height: middle/2
                    )
                )
            }
            
            Path { path in
                path.addRect(
                    CGRect(
                        x: middle - size/10,
                        y: middle,
                        width: size/20,
                        height: middle/2.5
                    )
                )
            }
            
            Path { path in
                path.addRect(
                    CGRect(
                        x: middle + size/20,
                        y: middle,
                        width: size/20,
                        height: middle/2.5
                    )
                )
            }
            
            Path { path in
                path.addRect(
                    CGRect(
                        x: middle + size/7.5,
                        y: middle,
                        width: size/20,
                        height: middle/4
                    )
                )
            }
            
            Path { path in
                path.addRect(
                    CGRect(
                        x: middle - size/5.5,
                        y: middle,
                        width: size/20,
                        height: middle/4
                    )
                )
            }
            
           
            

            Path { path in
                path.move(to: CGPoint(x: middle - size/40, y: middle - size/40))
                path.addCurve(
                    to: CGPoint(x: middle - size/40, y: middle - size/40),
                    control1: CGPoint(x: nearLine, y: farLine),
                    control2: CGPoint(x: farLine, y: nearLine)
                )
            }
            .stroke(Color.red, linewidth: 4)
            
        }
        .frame(width: width, height: height)
    }
    
}


struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView(width: 300, height: 300)
    }
}
