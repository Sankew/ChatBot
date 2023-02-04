//
//  Message.swift
//  ChatBot
//
//  Created by Sankeshwar Sivakumar on 10/12/2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
