//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            
            Spacer()
            
            VStack {
                ZStack {
                    if showAward {
                        BoneOne(width: width, height: height)
                            .transition(.move(edge: .leading))
                        BoneTwo(width: width, height: height)
                            .transition(.move(edge: .trailing))
                        Skull(width: width, height: height)
                            .transition(.skullTransition)
                        FireEyes(width: width, height: height)
                            .transition(.fireEyesTransition)
                    }
                }
                if showAward {
                    Text("GAME OVER")
                        .transition(.move(edge: .bottom))
                    
                }
            }
            Spacer()
        }
        .font(.headline)
        .padding()
        
    }
    
    private func buttonAction()  {
        withAnimation {
            showAward.toggle()
        }
        
    }
}

extension AnyTransition {
    static var skullTransition: AnyTransition {
        let insertion = AnyTransition.scale(scale: 3)
            .combined(with: .opacity)
            .animation(.default.delay(0.5))
        
        
        let removal = AnyTransition.scale(scale: 7)
            .combined(with: .opacity)
            .animation(.default.speed(0.15))
            .animation(.default.delay(0.5))
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
    static var fireEyesTransition: AnyTransition {
        let insertion = AnyTransition.offset()
            .combined(with: .opacity)
            .animation(.default.delay(1))
        
        
        let removal = AnyTransition.offset()
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(width: 250, height: 250)
    }
}
