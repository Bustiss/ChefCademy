//
//  RecipesListView.swift
//  ChefCademy
//
//  Created by Willie Jones on 9/4/24.
//

import SwiftUI

struct RecipesListView: View {
  @StateObject var recipeData = RecipeData()
  
  private let listBackgroundColor = AppColor.background
  private let listTextColor = AppColor.foreground
  
  var body: some View {
    List {
      ForEach(recipes) { recipe in
        NavigationLink(recipe.mainInformation.name,
                       destination: RecipeDetailView(recipe: recipe))
      }
      .listRowBackground(listBackgroundColor)
      .foregroundColor(listTextColor)
    }
    .navigationTitle(navigationTitle)
  }
}

extension RecipesListView {
  var recipes: [Recipe] {
    recipeData.recipes
  }
  
  var navigationTitle: String {
    "All Recipes"
  }
}

struct RecipesListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      RecipesListView()
    }
  }
}
