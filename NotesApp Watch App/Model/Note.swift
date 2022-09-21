//
//  Note.swift
//  NotesApp Watch App
//
//  Created by Usha Sai Chintha on 21/09/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
