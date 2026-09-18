//
//  HomePage.swift
//  festival-playlist-generator
//
//  Created by Alexandra Ioan on 18/09/2026.
//
import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "music.microphone")
                Text("Festival Playlist Generator")
                Text("Find a festival and turn its lineup into a Spotify playlist.")
                NavigationLink(destination: FestivalListPage()) {
                    Text("Find a festival")
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
