//
//  RecipeList.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct RecipeList: View {
    var recipes:[Recipe]
    var body: some View {
        VStack{
            HStack{
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")").font(.headline).opacity(0.7)
                Spacer()

            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)], content: {
                ForEach(recipes){
                    recipe in RecipeCard(recipe: recipe)
                }
            }).padding(.top)
        }.padding()
    }
}

#Preview {
    ScrollView{
        RecipeList(recipes: Recipe.all)
    }
}
