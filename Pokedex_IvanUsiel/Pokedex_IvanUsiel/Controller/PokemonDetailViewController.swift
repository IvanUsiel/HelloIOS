//
//  PokemonDetailViewController.swift
//  Pokedex_IvanUsiel
//
//  Created by Ivan Usiel Ramirez Jarquin on 06/03/25.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonAbilityLabel: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonMovementLabel: UILabel!
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "gralBakcground")
        
        if let pokemon = pokemon {
            pokemonNameLabel.text = "Name: \(pokemon.name)"
            pokemonImageView.image = UIImage(named: pokemon.image)
            pokemonMovementLabel.text = "Movement: \(pokemon.movement)"
            pokemonAbilityLabel.text = "Ability: \(pokemon.ability)"
        }
        else {
            print("Error: Pokemon data is nil.")
        }
    }
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
}
