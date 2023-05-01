//
//  DetailView.swift
//  MealProject
//
//  Created by Li, Yunpeng on 4/29/23.
//

import SwiftUI

struct DetailView: View {
    let mealId: String
    var api = Api()
    @State var mealDetails: MealDetail?
    
    var body: some View {
        VStack {
            if let mealDetails = mealDetails {
                MealDisplay(mealDetails: mealDetails)
            } else {
                LoadingView()
                    .task {
                        do {
                            mealDetails = try await api.loadMealDetail(mealId: mealId)
                        } catch {
                            print("Error getting meal details: \(error)")
                        }
                    }
            }
            
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(mealId: "52772")
    }
}
