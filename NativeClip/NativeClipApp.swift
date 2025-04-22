//
//  NativeClipApp.swift
//  NativeClip
//
//  Created by Jonathan Fox on 22/04/2025.
//

import SwiftUI


@main
struct NativeClipApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var clipboard_text: String = ""
    
    var body: some View {
        VStack{
            TextField("Clipboard text", text: $clipboard_text, axis:.vertical)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                        if let clipboardText = NSPasteboard.general.string(forType: .string) {
                            clipboard_text = clipboardText
                        }
                    }
                }
            Spacer()
        }
    }
    
}
