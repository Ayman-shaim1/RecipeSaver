//
//  RecipeCard.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct RecipeCard: View {
    var recipe:Recipe
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)){ image in
                image
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .overlay(alignment:.bottom){
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color:.black ,radius: 3,x:0,y:0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
            }
            
        }.frame(width: 160, height: 217,alignment: .top)
            .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
            .shadow(color:Color.black.opacity(0.3),radius: 15,x:0,y:10)
    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
