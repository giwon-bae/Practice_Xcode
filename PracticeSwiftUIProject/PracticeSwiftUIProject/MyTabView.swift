//
//  MyTabView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

struct MyTabView : View {
    var body: some View{
        
        TabView{
            Text("1번")
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            Text("2번")
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("1번")
                }
                .tag(1)
            Text("3번")
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("1번")
                }
                .tag(2)
        }
    }
}

struct Previews_MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
