//
//  DiceView.swift
//  SwiftUI_Redux_Tutorial
//
//  Created by 제로 on 2023/09/20.
//

import Foundation
import SwiftUI

struct DiceView : View {
    
    @EnvironmentObject var store : AppStore
    
    @State private var shouldRoll = false
    @State private var pressed = false
    
    var diceRollAnimation: Animation {
        Animation.spring()
    }
    
    func rollTheDice(){
        print(#fileID, #function, #line)
        self.store.dispatch(action: .rollTheDice)
    }
    
    var body: some View {
        
        VStack{
            Text(self.store.state.currentDice)
                .font(.system(size: 300, weight: .bold, design: .monospaced))
                .rotationEffect(.degrees(shouldRoll ? 360 : 0))
                .animation(diceRollAnimation)
            Button(action: {
                self.rollTheDice()
            }, label: {
                Text("Roll the dice")
                    .fontWeight(.black)
            }).buttonStyle(MyButtonStyle())
                .scaleEffect(self.pressed ? 0.8 : 1.0)
                .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
                    withAnimation(.easeInOut(duration: 0.2)) {
                        self.pressed = pressing
                    }
                }, perform: {})

        }

        
    }
}

struct Previews_DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
