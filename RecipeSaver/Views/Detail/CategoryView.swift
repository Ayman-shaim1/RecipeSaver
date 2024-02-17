//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by Apple on 15/2/2024.
//

import SwiftUI

struct CategoryView: View {
        
    var category :Category
    
    var recipes: [Recipe]  {
        return  Recipe.all.filter{$0.category == category.rawValue}
    }
    
    var body: some View {
            ScrollView{
                RecipeList(recipes:recipes)
            }.navigationTitle(category.rawValue)
        //rbt@Isga#2024
    }
}

#Preview {
    CategoryView(category: Category.soup)
}
