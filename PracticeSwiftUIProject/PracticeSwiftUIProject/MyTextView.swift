//
//  MyTextView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/19.
//

import SwiftUI

struct MyTextView: View{
    
    @State
    private var index: Int = 0
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("On Clicked Background")
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }
            else{
                self.index += 1                
            }
        }
    }
}



struct Previews_MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}