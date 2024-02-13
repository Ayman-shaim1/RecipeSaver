//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Apple on 13/2/2024.
//

import Foundation


enum Category: String{
    case breakfast = "breakfast"
    case soup = "soup"
    case salad = "salad"
    case appetizer = "appetizer"
    case main = "main"
    case side = "side"
    case dessert = "dessert"
    case snack = "snack"
    case drink = "drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category:Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all:[Recipe] = [
        Recipe (
            name:"Creamy Carrot Soup",
            image:"https://www.forksoverknives.com/uploads/Creamy-Carrot-Soup-for-Wordpress.jpg?auto=webp&quot",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
            ingredients: " ¼ cup cashews\n 1 medium onion, cut into ½-inch dice (2 cups)\n 1½ pounds carrots, cut into ½-inch dice (3½ cups)\n 1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n 1 sprig fresh rosemary\n 1 sprig fresh thyme\n 1 large fresh sage leaf\n 4 cloves garlic, minced\n 1 tablespoon lemon juice\n Sea salt and freshly ground black pepper or cayenne pepper, to taste\n ½ cup fresh pomegranate seeds\n 2 tablespoons finely chopped fresh parsley",
            directions: " In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\n In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\n Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\n Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\n To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "soup",
            datePublished: "2019-11-11",
            url:"https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        ),
        Recipe (
            name:"Creamy Carrot Soup",
            image:"https://www.forksoverknives.com/uploads/Creamy-Carrot-Soup-for-Wordpress.jpg?auto=webp&quot",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
            ingredients: " ¼ cup cashews\n 1 medium onion, cut into ½-inch dice (2 cups)\n 1½ pounds carrots, cut into ½-inch dice (3½ cups)\n 1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n 1 sprig fresh rosemary\n 1 sprig fresh thyme\n 1 large fresh sage leaf\n 4 cloves garlic, minced\n 1 tablespoon lemon juice\n Sea salt and freshly ground black pepper or cayenne pepper, to taste\n ½ cup fresh pomegranate seeds\n 2 tablespoons finely chopped fresh parsley",
            directions: " In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\n In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\n Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\n Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\n To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "soup",
            datePublished: "2019-11-11",
            url:"https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        ),
        Recipe (
            name:"Creamy Carrot Soup",
            image:"https://www.forksoverknives.com/uploads/Creamy-Carrot-Soup-for-Wordpress.jpg?auto=webp&quot",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
            ingredients: " ¼ cup cashews\n 1 medium onion, cut into ½-inch dice (2 cups)\n 1½ pounds carrots, cut into ½-inch dice (3½ cups)\n 1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n 1 sprig fresh rosemary\n 1 sprig fresh thyme\n 1 large fresh sage leaf\n 4 cloves garlic, minced\n 1 tablespoon lemon juice\n Sea salt and freshly ground black pepper or cayenne pepper, to taste\n ½ cup fresh pomegranate seeds\n 2 tablespoons finely chopped fresh parsley",
            directions: " In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\n In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\n Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\n Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\n To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "soup",
            datePublished: "2019-11-11",
            url:"https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        )
    ]
}
