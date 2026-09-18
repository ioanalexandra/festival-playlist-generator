//
//  FestivalListPage.swift
//  festival-playlist-generator
//
//  Created by Alexandra Ioan on 18/09/2026.
//
import SwiftUI



struct FestivalListPage: View {
    @State private var searchText = ""
    private var festivalList: [FestivalModel] = [
        FestivalModel(id: 0, name: "Coachella"),
        FestivalModel(id: 1, name: "Untold"),
        FestivalModel(id: 2, name: "Electric Castle"),
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(festivalList.filter({ item in
                    guard !searchText.isEmpty else { return true }
                    return item.name.contains(searchText)
                })) { list in
                    Text(list.name)
                }
            }
        }
        .navigationTitle("Festivals")
        .searchable(text: $searchText)
        .onChange(of: searchText) { oldValue, newValue in
            print(oldValue, newValue)
        }
        
    }
}
#Preview {
        FestivalListPage()
}
