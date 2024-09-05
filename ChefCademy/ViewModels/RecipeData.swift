//
//  RecipeData.swift
//  ChefCademy
//
//  Created by Willie Jones on 9/4/24.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
}
