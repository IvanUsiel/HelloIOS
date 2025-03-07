//
//  PokemonViewController.swift
//  Pokedex_IvanUsiel
//
//  Created by Ivan Usiel Ramirez Jarquin on 06/03/25.
//

import UIKit



class PokemonViewController: UIViewController {
    
    let dataManager = PokemonDataManager()
    @IBOutlet weak var pokemonTable: UITableView!
    @IBOutlet weak var pokemonVannerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "gralBakcground")
        self.pokemonTable.backgroundColor = UIColor(named: "gralBakcground")
        pokemonVannerImage.image = UIImage(named: "PokemonBanner")
        dataManager.fecth()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pokemonDetail" {
            if let indexPath = pokemonTable.indexPathForSelectedRow {
                let pokemon = dataManager.getPokemon(at: indexPath.row)
                if let detailVC = segue.destination as? PokemonDetailViewController {
                    detailVC.pokemon = pokemon
                }
            }
        }
    }
}


extension PokemonViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Celda seleccionada en el índice: \(indexPath.row)")
        self.performSegue(withIdentifier: "pokemonDetail", sender: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.contentView.backgroundColor = UIColor(named: "cellBackground")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemon"
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView.init(image: UIImage(named: "Pokemon"))
    }
    
}
