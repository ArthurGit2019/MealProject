//
//  Meals.swift
//  MealProject
//
//  Created by Li, Yunpeng on 4/28/23.
//

import Foundation

struct Meals: Codable {
    var meals: [Meal]
}

struct Meal: Codable {
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
}

struct MealDetails: Decodable {
    var meals: [MealDetail]
}

struct Ingredient: Equatable, Decodable {
    var name: String
    var measurement: String
}

struct MealDetail: Decodable {
    var idMeal: String
    var strMeal: String
    var strDrinkAlternate: String
    var strCategory: String
    var strArea: String
    var strInstructions: String
    var strMealThumb: String
    var strTags: String
    var strYoutube: String
    var ingredients: [Ingredient]
    var strSource: String
    var strImageSource: String
    var strCreativeCommonsConfirmed: String
    var dateModified: String
    
    enum CodingKeys : String, CodingKey {
        case idMeal
        case strMeal
        case strDrinkAlternate
        case strCategory
        case strArea
        case strInstructions
        case strMealThumb
        case strTags
        case strYoutube
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
        case strSource
        case strImageSource
        case strCreativeCommonsConfirmed
        case dateModified
    }
    
    init(from decoder: Decoder)
        throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            idMeal = (try? values.decode(String.self, forKey: .idMeal)) ?? ""
            strMeal = (try? values.decode(String.self, forKey: .strMeal)) ?? ""
            strDrinkAlternate = (try? values.decode(String.self, forKey: .strDrinkAlternate)) ?? ""
            strCategory = (try? values.decode(String.self, forKey: .strCategory)) ?? ""
            strArea = (try? values.decode(String.self, forKey: .strArea)) ?? ""
            strInstructions = (try? values.decode(String.self, forKey: .strInstructions)) ?? ""
            strMealThumb = (try? values.decode(String.self, forKey: .strMealThumb)) ?? ""
            strTags = (try? values.decode(String.self, forKey: .strTags)) ?? ""
            strYoutube = (try? values.decode(String.self, forKey: .strYoutube)) ?? ""
            
            var tempIngredients: [Ingredient] = []
            let emptyIngredient = Ingredient(name: "", measurement: "")
            let ingredient1 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient1)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure1)) ?? "")
            if ingredient1 != emptyIngredient { tempIngredients.append(ingredient1) }
            
            let ingredient2 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient2)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure2)) ?? "")
            if ingredient2 != emptyIngredient { tempIngredients.append(ingredient2) }
            
            let ingredient3 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient3)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure3)) ?? "")
            if ingredient3 != emptyIngredient { tempIngredients.append(ingredient3) }
            
            let ingredient4 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient4)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure4)) ?? "")
            if ingredient4 != emptyIngredient { tempIngredients.append(ingredient4) }
            
            let ingredient5 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient5)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure5)) ?? "")
            if ingredient5 != emptyIngredient { tempIngredients.append(ingredient5) }
            
            let ingredient6 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient6)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure6)) ?? "")
            if ingredient6 != emptyIngredient { tempIngredients.append(ingredient6) }
            
            let ingredient7 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient7)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure7)) ?? "")
            if ingredient7 != emptyIngredient { tempIngredients.append(ingredient7) }
            
            let ingredient8 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient8)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure8)) ?? "")
            if ingredient3 != emptyIngredient { tempIngredients.append(ingredient8) }
            
            let ingredient9 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient9)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure9)) ?? "")
            if ingredient9 != emptyIngredient { tempIngredients.append(ingredient9) }
            
            let ingredient10 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient10)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure10)) ?? "")
            if ingredient10 != emptyIngredient { tempIngredients.append(ingredient10) }
            
            let ingredient11 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient11)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure11)) ?? "")
            if ingredient11 != emptyIngredient { tempIngredients.append(ingredient11) }
            
            let ingredient12 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient12)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure12)) ?? "")
            if ingredient12 != emptyIngredient { tempIngredients.append(ingredient12) }
            
            let ingredient13 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient13)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure13)) ?? "")
            if ingredient13 != emptyIngredient { tempIngredients.append(ingredient13) }
            
            let ingredient14 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient14)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure14)) ?? "")
            if ingredient14 != emptyIngredient { tempIngredients.append(ingredient14) }
            
            let ingredient15 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient15)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure15)) ?? "")
            if ingredient15 != emptyIngredient { tempIngredients.append(ingredient15) }
            
            let ingredient16 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient16)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure16)) ?? "")
            if ingredient16 != emptyIngredient { tempIngredients.append(ingredient16) }
            
            let ingredient17 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient17)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure17)) ?? "")
            if ingredient17 != emptyIngredient { tempIngredients.append(ingredient17) }
            
            let ingredient18 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient18)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure18)) ?? "")
            if ingredient18 != emptyIngredient { tempIngredients.append(ingredient18) }
            
            let ingredient19 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient19)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure19)) ?? "")
            if ingredient19 != emptyIngredient { tempIngredients.append(ingredient19) }
            
            let ingredient20 = Ingredient(
                name: (try? values.decode(String.self, forKey: .strIngredient20)) ?? "",
                measurement: (try? values.decode(String.self, forKey: .strMeasure20)) ?? "")
            if ingredient20 != emptyIngredient { tempIngredients.append(ingredient20) }
            
            ingredients = tempIngredients
            
            strSource = (try? values.decode(String.self, forKey: .strSource)) ?? ""
            strImageSource = (try? values.decode(String.self, forKey: .strImageSource)) ?? ""
            strCreativeCommonsConfirmed = (try? values.decode(String.self, forKey: .strCreativeCommonsConfirmed)) ?? ""
            dateModified = (try? values.decode(String.self, forKey: .dateModified)) ?? ""
            
    }
}

class Api : ObservableObject {
    @Published var meals = [Meal]()
    
    func loadData(completion:@escaping ([Meal]) -> ()) {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
           
            let meals = try! JSONDecoder().decode(Meals.self, from: data!).meals
            print(meals)
            DispatchQueue.main.async {
                completion(meals)
            }
        }.resume()
    }
    
    func loadMealDetail(mealId: String) async throws -> MealDetail {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(mealId)") else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        
        let decodedData = try JSONDecoder().decode(MealDetails.self, from: data).meals
        
        return decodedData[0]
    }
}
