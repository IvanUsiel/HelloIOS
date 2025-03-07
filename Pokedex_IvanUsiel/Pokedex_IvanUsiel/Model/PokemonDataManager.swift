//
//  PokemonDataManager.swift
//  Pokedex_IvanUsiel
//
//  Created by Ivan Usiel Ramirez Jarquin on 06/03/25.
//

import Foundation

class PokemonDataManager {
    
    //MARK: Properties
    private var pokemons : [Pokemon] = []
    
    
    //MARK: data source array :P
    let pokemonsArray = [
        ["image":"0", "name": "Wartortle","movement":"Torrent","ability": "Powers up Water-type moves when the Pokémon’s HP is low."],
        ["image":"1", "name": "Bulbasaur","movement":"Overgrow","ability":"Powers up Grass-type moves when the Pokémon’s HP is low."],
        ["image":"2", "name": "Blastoise","movement":"Torrent","ability":"Powers up Water-type moves when the Pokémon’s HP is low."],
        ["image":"3", "name":"Butterfree","movement":"Compound Eyes","ability":"The Pokémon’s compound eyes boost its accuracy."],
        ["image":"4", "name":"Ivysaur","movement":"Overgrow","ability":"Powers up Grass-type moves when the Pokémon’s HP is low."],
        ["image":"5", "name":"Jigglypuf","movement":"Cute Charm","ability":"The Pokémon may infatuate attackers that make direct contact wit it."],
        ["image":"6", "name":"Charmander","movement":"Blaze","ability":"Powers up Fire-type moves when the Pokémon’s HP is low."],
        ["image":"7", "name":"Meowth","movement":"Pickup","ability":"The Pokémon may pick up an item another Pokémon used during a battle. It may pick up items outside of battle, too."],
        ["image":"8", "name":"Alakazam","movement":"Inner Focus","ability":"The Pokémon’s intense focus prevents it from flinching or being affected by Intimidate."],
        ["image":"9", "name":"Pidgey","movement":"Keen Eye","ability":"The Pokémon’s keen eyes prevent its accuracy from being lowered."],
        ["image":"10", "name":"Raichu","movement":"Static","ability":"The Pokémon is charged with static electricity and may paralyze attackers that make direct contact with it."],
        ["image":"11", "name":"Rattata","movement":"Guts","ability":"It’s so gutsy that having a status condition boosts the Pokémon’s Attack stat."],
        ["image":"12", "name":"Vaporeon","movement":"Water Absorb","ability":"If hit by a Water-type move, the Pokémon has its HP restored instead of taking damage."],
        ["image":"13", "name":"Jynx","movement":"Forewarn","ability":"When it enters a battle, the Pokémon can tell one of the moves an opposing Pokémon has."],
        ["image":"14", "name":"Venusaur","movement":"Overgrow","ability":"Powers up Grass-type moves when the Pokémon’s HP is low."],
        ["image":"15", "name":"Linea","movement":"Gluttony","ability":"If the Pokémon is holding a Berry to be eaten when its HP is low, it will instead eat the Berry when its HP drops to half or less."],
        ["image":"16", "name":"Slowbro","movement":"Oblivious","ability":"The Pokémon is oblivious, keeping it from being infatuated, falling for taunts, or being affected by Intimidate."],
        ["image":"17", "name":"Dewgong","movement":"Thick Fat","ability":"The Pokémon is protected by a layer of thick fat, which halves the damage taken from Fire- and Ice-type moves."],
        ["image":"18", "name":"Spearow","movement":"Keen Eye","ability":"The Pokémon’s keen eyes prevent its accuracy from being lowered."],
        ["image":"19", "name":"Wigglytuff","movement":"Competitive","ability":"Boosts the Pokémon’s Sp. Atk stat sharply when its stats are lowered by an opposing Pokémon."],
        ["image":"20", "name":"Scyther","movement":"Swarm","ability":"Powers up Bug-type moves when the Pokémon’s HP is low."],
        ["image":"21", "name":"Golduk","movement":"Damp","ability":"The Pokémon dampens its surroundings, preventing all Pokémon from using explosive moves such as Self-Destruct."],
        ["image":"22", "name":"Lapras","movement":"Water Absorb","ability":"If hit by a Water-type move, the Pokémon has its HP restored instead of taking damage."],
        ["image":"23", "name":"Sandshrew","movement":"Sand Veil","ability":"Boosts the Pokémon’s evasiveness in a sandstorm."]
    ]
    
    //MARK:Methods
    func fecth() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        pokemons.count
    }
    
}
