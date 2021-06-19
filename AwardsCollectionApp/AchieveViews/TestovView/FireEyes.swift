//
//  FireEyes.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct FireEyes: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let nearLine = size * 0.1
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaleEffect(0.1)
                .offset(x: -nearLine, y: -nearLine * 2)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaleEffect(0.1)
                .offset(x: nearLine, y: -nearLine * 2)
            
        }
        .foregroundColor(.red)
        .shadow(color: .white, radius: 10, x: 0, y: 0)
        .frame(width: width, height: height)
    }
}

struct FireEyes_Previews: PreviewProvider {
    static var previews: some View {
        FireEyes(width: 300, height: 300)
    }
}
