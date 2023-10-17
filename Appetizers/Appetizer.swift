//
//  Appetizer.swift
//  Appetizers
//
//  Created by Eliana Wang on 10/14/23.
//

import Foundation

//decodeable is to decode after retrieving the data from the server
//we can remove "id: \.id" in the List() by adding "Identifiable"
struct Appetizer: Decodable, Identifiable {
    //if you're using Codeable to parse the json, name your properties the EXACT same as in the json
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
    
    //let is another way of declaring a variable. "let" is for permanent things, "var" is things that can be changed later.
}

//to handling parsing thru the json with Codeable
struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is a great appetizer. It is very tasty. You should definetely try it out. I recommend it.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
