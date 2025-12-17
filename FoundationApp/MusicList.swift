//
//  MusicList.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 16/12/25.
//

import SwiftUI

struct MusicList: View {
    
    
    let artist: String    
    var filteredSongs: [Song] {
        songs.filter { $0.artist == artist }
    }
    
    var body: some View {
        List(filteredSongs) { song in
            VStack(alignment: .leading) {
                Text(song.title)
                    .font(.headline)
                Text(song.artist)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle(artist)
    }
}


#Preview {
    MusicList(artist: "Ed Sheeran")
}
