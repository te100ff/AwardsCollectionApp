//
//  test.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct test: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: middle - nearLine),
                    radius: middle/2,
                    startAngle: .degrees(45),
                    endAngle: .degrees(135),
                    clockwise: true
                )
                
                path.addRect(
                    CGRect(
                        x: middle - size/40,
                        y: middle * 1.153,
                        width: size/20,
                        height: middle/2
                    )
                )
                
                path.addRect(
                    CGRect(
                        x: middle - size/10,
                        y: middle * 1.153,
                        width: size/20,
                        height: middle/2.5
                    )
                )
                
                path.addRect(
                    CGRect(
                        x: middle + size/20,
                        y: middle * 1.153,
                        width: size/20,
                        height: middle/2.5
                    )
                )
                
                path.addRect(
                    CGRect(
                        x: middle + size/7.5,
                        y: middle * 1.153,
                        width: size/20,
                        height: middle/4
                    )
                )
                
                path.addRect(
                    CGRect(
                        x: middle - size/5.5,
                        y: middle * 1.153,
                        width: size/20,
                        height: middle/4
                    )
                )
            }
        
            

        }
        .frame(width: width, height: height)
        .foregroundColor(.black)
        .shadow(color: .red, radius: 10, x: 0, y: 0)
    }
    
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test(width: 300, height: 300)
    }
}
