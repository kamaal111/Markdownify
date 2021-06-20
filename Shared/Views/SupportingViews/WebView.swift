//
//  WebView.swift
//  Markdownify
//
//  Created by Kamaal M Farah on 20/06/2021.
//

import SwiftUI
import WebKit

#if canImport(UIKit)
struct WebView: UIViewRepresentable {
    let html: String

    init(html: String) {
        self.html = html
    }

    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView()
        return view
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(html, baseURL: nil)
    }

    typealias UIViewType = WKWebView
}
#endif

#if canImport(AppKit)
struct WebView: NSViewRepresentable {
    let html: String

    init(html: String) {
        self.html = html
    }

    func makeNSView(context: Context) -> WKWebView {
        let view = WKWebView()
        return view
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.loadHTMLString(html, baseURL: nil)
    }

    typealias NSViewType = WKWebView
}
#endif

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(html: "")
    }
}
