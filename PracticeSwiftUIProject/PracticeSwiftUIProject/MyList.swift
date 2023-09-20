//
//  MyList.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/19.
//

import SwiftUI

struct MyList: View {
    var body: some View {
//        List{
//            ForEach(1...10, id: \.self){
//                Text("MyList \($0)")
//            }
//        }
        List{
            Section(
                header: Text("ToDo List")
                ,footer: Text("footer")
            ){
                ForEach(1...10, id: \.self){ itemIdx in
                    Text("MyList \(itemIdx)")
                }
            }

        }
    }
}

struct Previews_MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
