//
//  Reducer.swift
//  SwiftUI_Redux_Tutorial
//
//  Created by 제로 on 2023/09/20.
//

import Foundation

typealias Reducer<State, Action> = (inout State, Action) -> Void

func appReducer(_ state: inout AppState, _ action: AppAction) -> Void {
    switch action {
    case .rollTheDice:
        state.currentDice = ["⚀","⚁","⚂","⚃","⚄","⚅"].randomElement() ?? "⚀"
    }
}
