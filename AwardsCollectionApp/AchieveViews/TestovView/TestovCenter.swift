//
//  TestovCenter.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct TestovCenter: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            ZStack {
                
                test(width: width, height: height)
                    .shadow(color: .red, radius: 10, x: 0, y: 0)
                Image(systemName: "flame.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .scaleEffect(0.1)
                    .offset(x: -nearLine, y: -nearLine * 2)
                
                Image(systemName: "flame.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .scaleEffect(0.1)
                    .offset(x: nearLine, y: -nearLine * 2)
            }
            
        }
        .frame(width: width, height: height)
        .foregroundColor(.black)
        .shadow(color: .white, radius: 10, x: 0, y: 0)
    }
}

struct TestovCenter_Previews: PreviewProvider {
    static var previews: some View {
        TestovCenter(width: 300, height: 300)
    }
}
