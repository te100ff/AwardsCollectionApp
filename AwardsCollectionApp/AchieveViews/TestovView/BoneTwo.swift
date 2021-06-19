//
//  TestovLineTwo.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct BoneTwo: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        BoneOne(width: width, height: height)
            .rotationEffect(.degrees(90))
    }
}

struct TestovLineTwo_Previews: PreviewProvider {
    static var previews: some View {
        BoneTwo(width: 300, height: 300)
    }
}
