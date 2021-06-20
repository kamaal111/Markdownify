//
//  ContentView.swift
//  Shared
//
//  Created by Kamaal M Farah on 20/06/2021.
//

import SwiftUI
import Ink

struct ContentView: View {
    @Binding var document: MarkdownifyDocument

    var body: some View {
        HStack {
            TextEditor(text: $document.text)
            WebView(html: html)
        }
    }

    var html: String {
        let parser = MarkdownParser()
        return parser.html(from: document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MarkdownifyDocument()))
    }
}
