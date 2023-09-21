//
//  ContentView.swift
//  SwiftUI_Redux_Tutorial
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

struct ContentView: View {
    
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    var body: some View {
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
