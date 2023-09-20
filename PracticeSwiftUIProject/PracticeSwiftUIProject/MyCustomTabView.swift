//
//  MyCustomTabView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case myPage
}

struct MyCustomTabView : View {
    
    @State
    var tabIndex : TabIndex
    
   
    var body: some View {

        GeometryReader{ geometry in
            
            ZStack{
                Text("Home")
                Text("Cart")
                Text("MyPage")
            } // ZStack
        } // GeometryReader
        .edgesIgnoringSafeArea(.all)
    }
}

struct Previews_MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
