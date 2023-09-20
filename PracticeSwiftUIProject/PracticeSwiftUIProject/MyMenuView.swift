//
//  MyMenuView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

struct MyMenuView : View {
    var body: some View {
        
        NavigationView{
            Text("Hello")
                .padding()
                .navigationTitle("Hi")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction, content: {
                        Menu(content: {
                            Text("111")
                        }, label: {
                            Label("더보기", systemImage: "ellipsis")
                        })
                    })
                })
        }
    }
}

struct Previews_MyMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MyMenuView()
    }
}
