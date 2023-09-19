//
//  ContentView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated);
                    MyVstackView(isActivated: $isActivated);
                    MyVstackView(isActivated: $isActivated);
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture{
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("Navigation")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
                
                NavigationLink(destination: MyWebView(urlToLoad: "http://pf.kakao.com/_ZxcxdxhG")){
                    Text("Kakao")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 25)
            }
            
        }
    }
}

struct MyVstackView: View{
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View{
        VStack{
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 50))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
