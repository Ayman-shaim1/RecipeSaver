//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            Text("Categories").navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
