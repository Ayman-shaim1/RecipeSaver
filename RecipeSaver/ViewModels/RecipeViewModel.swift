//
//  RecipeViewModel.swift
//  RecipeSaver
//
//  Created by Apple on 16/2/2024.
//

import Foundation

class RecipeViewModel:ObservableObject{
   @Published private(set) var recipes:[Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe:Recipe){
        recipes.append(recipe)
    }
}
