//
//  TestovMain.swift
//  AwardsCollectionApp
//
//  Created by Stanislav Testov on 18.06.2021.
//

import SwiftUI

struct TestovMain: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            TestovLineOne(width: width, height: height)
            TestovLineTwo(width: width, height: height)
        }
    }
}

struct TestovMain_Previews: PreviewProvider {
    static var previews: some View {
        TestovMain(width: 300, height: 300)
    }
}
