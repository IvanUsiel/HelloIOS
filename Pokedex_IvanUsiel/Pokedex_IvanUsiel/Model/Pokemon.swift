//
//  Pokemon.swift
//  Pokedex_IvanUsiel
//
//  Created by Ivan Usiel Ramirez Jarquin on 06/03/25.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let movement : String
    let ability : String
    
    
    init(dict: [String : String]) {
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.movement = dict["movement"]!
        self.ability = dict["ability"]!
    }
    
}

