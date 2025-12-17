import SwiftUI

struct MusicPage: View {
    
    // Group songs by artist
    var groupedByArtist: [String: [Song]] {
        Dictionary(grouping: songs, by: { $0.artist })
    }
    
    var sortedArtists: [String] {
        groupedByArtist.keys.sorted()
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            ColorGradient().ignoresSafeArea()
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(sortedArtists, id: \.self) { artist in
                        NavigationLink(destination: MusicList(artist: artist)) {
                            VStack {
                                Image(artistImage(for: artist))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(artist)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.primary)
                            }
                            .padding()
                            //.background(.ultraThinMaterial)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                        }
                        
                    }
                }
                .padding()
            }
            
        }.navigationTitle("Music")
    }

    func artistImage(for artist: String) -> String {
        return artist.replacingOccurrences(of: " ", with: "")
    }
}

#Preview {
    NavigationStack{
        MusicPage()
    }
    
}
