//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject  var recipesVM: RecipeViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipes: recipesVM.recipes)
            }.navigationTitle("My Recipes")
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView().environmentObject(RecipeViewModel())
}
