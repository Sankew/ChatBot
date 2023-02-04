//
//  ChatBotApp.swift
//  ChatBot
//
//  Created by Sankeshwar Sivakumar on 03/12/2022.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
