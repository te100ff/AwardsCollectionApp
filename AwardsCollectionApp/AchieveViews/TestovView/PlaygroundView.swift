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
        TestovLineOne(width: 300, height: 300)
            .rotationEffect(.degrees(90))
    }
      
}

        


struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView(width: 300, height: 300)
    }
}
