//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe").navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    NewRecipeView()
}
