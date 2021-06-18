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
        TestovLineOne(width: 300, height: 300)
            .rotationEffect(.degrees(90))
    }
}

struct TestovLineTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestovLineTwo(width: 300, height: 300)
    }
}
