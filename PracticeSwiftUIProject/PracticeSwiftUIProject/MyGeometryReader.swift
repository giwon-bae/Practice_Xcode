//
//  MyGeometryReader.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/20.
//

import SwiftUI

struct MyGeometryReader : View {
    
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    
    var body: some View {
        
        GeometryReader{ proxy in
            HStack(spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .frame(width: proxy.size.width / 3)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .frame(width: proxy.size.width / 3)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .frame(width: proxy.size.width / 3)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .foregroundColor(Color.white)
//                    .frame(width: 50)
//                    .background(Color.purple)
            }.background(Color.yellow)
                .position(centerPosition(proxy))
        }.background(Color.black)
        
        
    }
}

struct Previews_MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
