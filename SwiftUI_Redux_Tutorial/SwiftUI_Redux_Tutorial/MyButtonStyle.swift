//
//  MyButtonStyle.swift
//  SwiftUI_Redux_Tutorial
//
//  Created by 제로 on 2023/09/20.
//

import Foundation
import SwiftUI

struct MyButtonStyle : ButtonStyle {
    func makeBody(configuration:
                  Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(20)
    }
}

struct Previews_MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            
        }, label: {
            Text("Hi")
                .fontWeight(.heavy)
        }).buttonStyle(MyButtonStyle())
    }
}
