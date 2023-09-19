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
                    MyVstackView();
                    MyVstackView();
                    MyVstackView();
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture{
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView()){
                    Text("Navigation")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
            
        }
    }
}

struct MyVstackView: View{
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
        .background(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
