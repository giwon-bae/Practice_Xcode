//
//  Store.swift
//  SwiftUI_Redux_Tutorial
//
//  Created by 제로 on 2023/09/20.
//

import Foundation

typealias AppStore = Store<AppState, AppAction>

final class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
    
    init(state: State, reducer: @escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    func dispatch(action: Action){
        reducer(&self.state, action)
    }
}
