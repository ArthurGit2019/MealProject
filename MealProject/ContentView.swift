//
//  ContentView.swift
//  MealProject
//
//  Created by Li, Yunpeng on 4/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var desserts = [Meal]()
    @State var mealId: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0.1, content: {
                
                Text("Welcome to TheMealDB")
                    .bold()
                    .font(.title)
                    .padding()
                
                Text("Welcome to TheMealDB: An open, crowd-sourced database of Recipes from around the world.")
                    .bold()
                    .font(.caption)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 15)
                
                AsyncImage(url: URL(string: "https://www.themealdb.com/images/media/meals/0jv5gx1661040802.jpg"))
                    .frame(width: 286, height: 198, alignment: .leading)
                    .cornerRadius(8.0)
                    .padding()
                
                AsyncImage(url: URL(string: "https://www.themealdb.com/images/media/meals/tkxquw1628771028.jpg"))
                    .frame(width: 286, height: 198, alignment: .leading)
                    .cornerRadius(8.0)
                    .padding()
                
                Button(action: {
                    mealId = ""
                }, label: {
                    NavigationLink {
                        DessertView(desserts: desserts)
                    } label: {
                        Text("List all Desserts")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                })
                
                
                
                HStack(alignment: .center) {
                    Text("Meal ID:")
                        .font(.callout)
                        .bold()
                    TextField("Search by ID...", text: $mealId)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 15)
                
                Button(action: {
                    mealId = ""
                }, label: {
                    NavigationLink {
                        DetailView(mealId: mealId)
                    } label: {
                        Text("See Dessert Details")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.teal)
                })
                
            })
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
