//
//  MyCard.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/19.
//

import SwiftUI

struct MyCard: View{
    
    @State
    var shouldShowAlert:Bool = false
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Tmp Title")
            Text("Tmp Title")
            HStack{
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                
                Spacer()
                
                Button(action: {
                    print("onClick Button")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창"))
                }
                
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct Previews_MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}
