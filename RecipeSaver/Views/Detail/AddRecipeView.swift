//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by Apple on 16/2/2024.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject  var recipesVM: RecipeViewModel
    @State private var name:String = ""
    @State private var selectedCategory:Category = Category.main
    @State private var description:String = ""
    @State private var ingredients:String = ""
    @State private var direction:String = ""
    @State private var navigateToRecipe:Bool = false
    
    @Environment (\.dismiss) var dimiss
   		
    var body: some View {
        NavigationView {
            Form{
                Section(header:Text("Name")){
                    TextField("Recipe name",text:$name)
                }
                Section(header:Text("Categoy")){
                    Picker("Category",selection: $selectedCategory){
                        ForEach(Category.allCases,id:\.self){category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }.pickerStyle(.menu)
                   
                }
                Section(header:Text("Decription")){
                    TextField("Recipe description",text:$description)

                }
                Section(header:Text("Ingredients")){
                    TextField("Recipe ingredients",text:$ingredients)

                }
                Section(header:Text("Direction")){
                    TextField("Recipe direction",text:$direction)

                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dimiss()
                    } label: {
                        Label("Cancel",systemImage: "xmark")
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: Recipe.all.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done",systemImage: "checkmark").labelStyle(.iconOnly)
                        }
                    }.disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView().environmentObject(RecipeViewModel())
}

extension AddRecipeView{
    private func saveRecipe(){
        let now = Date()
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormater.string(from: now)
        
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: direction, category:selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipesVM.addRecipe(recipe:recipe)
    }
}
