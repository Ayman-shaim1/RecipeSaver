//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct RecipeView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)){ image in
                image
                    .resizable()
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
            }.frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            
            VStack(spacing:20){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment:.leading,spacing: 30){
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                   
                    if !recipe.ingredients.isEmpty{
                        VStack(alignment:.leading,spacing: 20){
                            Text("Ingredients").font(.headline).bold()
                            Text(recipe.ingredients)
                        }
                    }
                    
                    VStack(alignment:.leading,spacing: 20){
                        Text("Directions").font(.headline).bold()
                        Text(recipe.directions)
                    }
                }.frame(maxWidth:.infinity,alignment: .leading)
                
            }.padding(.horizontal)
        
        }.ignoresSafeArea(.container,edges: .top)
    }
}

#Preview {
    RecipeView(recipe: Recipe.all[0])
}	
