//
//  MyNavigationView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View{
        NavigationView{
            Text("MyNavigationView")
                .navigationTitle("Hello!")
                .navigationBarItems(leading:
                                        Button(action:{
                    print("onClcik")
                }){
                    Text("Button")
                }
                                    , trailing: NavigationLink(destination: Text("Next Page")){
                    Text("Navigation")
                }
                )
        }

    }
}

struct Previews_MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
