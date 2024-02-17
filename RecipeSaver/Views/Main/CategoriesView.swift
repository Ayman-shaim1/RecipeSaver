//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject  var recipesVM: RecipeViewModel
    var category:Category
    var recipes :[Recipe]  {
        return recipesVM.recipes.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        NavigationView{
            List {
                ForEach(Category.allCases,id:\.self){category in
                    NavigationLink(category.rawValue+"s"){
                      CategoryView(category: category)
                    }
                }
            }.navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    // CategoriesView(category:Category.soup).environmentObject(RecipeViewModel())
    CategoriesView(category: Category.soup).environmentObject(RecipeViewModel() )
}
