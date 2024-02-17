//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipeViewModel()


    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(recipesViewModel)
        }
    }
}
