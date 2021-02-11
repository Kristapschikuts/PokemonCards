//
//  Pokemon.swift
//  PokemonCards
//
//  Created by kristaps.cikuts on 09/02/2021.
//

import Foundation



struct Pokemon: Decodable {
    let name: String
    var imageUrl: String?
    //let number_Card: String
    let number: String
    let subtype: String?
    let supertype: String?
    let rarity: String
    
    enum CodingKeys: String, CodingKey{
        case name
        case imageUrl
       // case number_Card = "number"
        case number
        case subtype
        case supertype
        case rarity
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}
