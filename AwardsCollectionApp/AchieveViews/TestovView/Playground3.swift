//
//  Playground3.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct Playground3: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            
            Path { path in
                
            }
            
        Image(systemName: "flame.fill")
            .resizable()
            .foregroundColor(.red)
    }
}
}

struct Playground3_Previews: PreviewProvider {
    static var previews: some View {
        Playground3(width: 300, height: 300)
    }
}
