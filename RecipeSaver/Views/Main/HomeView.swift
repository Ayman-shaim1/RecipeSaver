//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }.navigationTitle("My Recipes")
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
