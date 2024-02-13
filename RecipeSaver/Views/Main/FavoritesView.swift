//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe to your favorites yes.").padding().navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
