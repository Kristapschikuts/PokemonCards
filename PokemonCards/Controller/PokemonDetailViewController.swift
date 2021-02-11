//
//  PokemonDetailViewController.swift
//  PokemonCards
//
//  Created by kristaps.cikuts on 09/02/2021.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var pokemon: Pokemon?
    
    
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                self.pokemonImageView.image = image
            }
            
        }else{
            print("pokemon image is nil")
        }
            if let pokemon = pokemon {
                rarityLabel.text = "Rarity: \(pokemon.rarity)"
            }else{
                print("pokemon name label is nil")
            }
            }
        }
