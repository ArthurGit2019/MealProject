//
//  MealDisplay.swift
//  MealProject
//
//  Created by Li, Yunpeng on 4/29/23.
//

import SwiftUI

struct MealDisplay: View {
    
    var mealDetails: MealDetail
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0.1, content: {
                
                AsyncImage(url: URL(string: mealDetails.strMealThumb))
                    .frame(width: 351, height: 243, alignment: .leading)
                    .cornerRadius(8.0)
                    .padding()
                Text(mealDetails.strMeal)
                Text("Instructions")
                    .bold()
                    .font(.title2)
                    .padding(.top, 25)
                Text(mealDetails.strInstructions)
                    .padding()
                Text("Ingredients")
                    .bold()
                    .font(.title2)
                    .padding(.top, 25)
                
                VStack {
                    ForEach(0..<mealDetails.ingredients.count, id: \.self) { i in
                        Text("\(mealDetails.ingredients[i].name) \(mealDetails.ingredients[i].measurement)")
                            .padding(.bottom, 1)
                    }
                }
                .padding()
                
            })
        }
    }
}

//struct MealDisplay_Previews: PreviewProvider {
//    static var previews: some View {
//        MealDisplay()
//    }
//}
