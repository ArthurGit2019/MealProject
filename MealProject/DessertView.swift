//
//  DessertView.swift
//  MealProject
//
//  Created by Li, Yunpeng on 4/28/23.
//

import SwiftUI

struct DessertView: View {
    
    @State var desserts: [Meal]
    
    var body: some View {
        
            ScrollView {
                ForEach(desserts.sorted { $0.strMeal < $1.strMeal }, id: \.idMeal) { dessert in
                    
                    NavigationLink {
                        DetailView(mealId: dessert.idMeal)
                    } label: {
                        VStack(alignment: .center, spacing: 0.1, content: {
                            AsyncImage(url: URL(string: dessert.strMealThumb))
                                .frame(width: 351, height: 243, alignment: .leading)
                                .cornerRadius(8.0)
                                .padding()
                            Text(dessert.strMeal)
                            Text(dessert.idMeal)
                        })
                    }
                    
                }
                .onAppear() {
                    Api().loadData { (meals) in
                        self.desserts = meals
                    }
                }
            
        }.navigationTitle("Dessert List")
    }
}

//struct DessertView_Previews: PreviewProvider {
//    static var previews: some View {
//        DessertView()
//    }
//}
