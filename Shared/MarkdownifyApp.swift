//
//  MarkdownifyApp.swift
//  Shared
//
//  Created by Kamaal M Farah on 20/06/2021.
//

import SwiftUI

@main
struct MarkdownifyApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: MarkdownifyDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
