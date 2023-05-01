//
//  MealProjectTests.swift
//  MealProjectTests
//
//  Created by Li, Yunpeng on 4/28/23.
//

import XCTest
@testable import MealProject

final class MealProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testLoadMealDetail() async throws {
        let api = Api()
        let mealDetails = try await api.loadMealDetail(mealId: "52772")
        
        XCTAssertNotNil(mealDetails)
        XCTAssertNotNil(mealDetails.dateModified)
        XCTAssertNotNil(mealDetails.idMeal)
        XCTAssertNotNil(mealDetails.strArea)
        XCTAssertNotNil(mealDetails.strCategory)
        XCTAssertNotNil(mealDetails.strCreativeCommonsConfirmed)
        XCTAssertNotNil(mealDetails.strDrinkAlternate)
        XCTAssertNotNil(mealDetails.strImageSource)
        XCTAssertNotNil(mealDetails.strInstructions)
        XCTAssertNotNil(mealDetails.strMeal)
        XCTAssertNotNil(mealDetails.strMealThumb)
        XCTAssertNotNil(mealDetails.strSource)
        XCTAssertNotNil(mealDetails.strTags)
        XCTAssertNotNil(mealDetails.strYoutube)
        
        for i in 0..<mealDetails.ingredients.count {
            XCTAssertNotNil(mealDetails.ingredients[i].name)
            XCTAssertNotNil(mealDetails.ingredients[i].measurement)
        }
    }
    
    func testLoadData() async throws {
        let api = Api()
        var desserts = [Meal]()
        
        api.loadData { (meals) in
            desserts = meals
        }
        
        XCTAssertNotNil(desserts)
        
        for i in 0..<desserts.count {
            XCTAssertNotNil(desserts[i].strMealThumb)
            XCTAssertNotNil(desserts[i].strMeal)
            XCTAssertNotNil(desserts[i].idMeal)
        }
    }

}
