//
//  MyWebView.swift
//  PracticeSwiftUIProject
//
//  Created by 제로 on 2023/09/19.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable{

    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct Previews_MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "http://pf.kakao.com/_ZxcxdxhG")
    }
}
