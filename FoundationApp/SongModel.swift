//
//  SongModel.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 16/12/25.
//

import SwiftUI

struct Song: Identifiable {
    var id: UUID = UUID()
    var title: String
    var artist: String
    var album: String = "Unknown"
    var duration: String = "5:00"
}

let songs: [Song] = [
    Song(title: "Shape of You", artist: "Ed Sheeran"),
    Song(title: "Perfect", artist: "Ed Sheeran"),
    Song(title: "Blinding Lights", artist: "The Weeknd"),
    Song(title: "Starboy", artist: "The Weeknd"),
    Song(title: "Believer", artist: "Imagine Dragons"),
    Song(title: "Thunder", artist: "Imagine Dragons")
]


