//
//  TabBar.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label(
                    title: { Text("Home") },
                    icon: { Image(systemName: "house") }
                )
            }
            CategoriesView().tabItem {
                Label(
                    title: { Text("Categories") },
                    icon: {
                        Image(systemName: "square.fill.text.grid.1x2")
                    }
                )
            }
            NewRecipeView().tabItem {
                Label(
                    title: { Text("New") },
                    icon: { Image(systemName: "plus") }
                )
            }
            FavoritesView().tabItem {
                Label(
                    title: { Text("Favorites") },
                    icon: { Image(systemName: "heart") }
                )
            }
            SettingsView().tabItem {
                Label(
                    title: { Text("Settings") },
                    icon: { Image(systemName: "gear") }
                )
            }
        }
    }
}

#Preview {
    TabBar()
}
