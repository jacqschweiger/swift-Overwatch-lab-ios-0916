//
//  Game.swift
//  Overwatch
//
//  Created by Tanira Wiggins on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//
import UIKit
import Foundation


struct Game {
    var offenseCharacters: [Hero] = [ ]
    var defenseCharacters: [Hero] = [ ]
    var supportCharacters: [Hero] = [ ]
    var tankCharacters: [Hero] = [ ]
    
    var heroType : HeroType = .offense
    
    var heroes: [Hero] {
        return heroesForType()
        
    }
    
    init(){
        self.createAllHeroes()
    }
    
}

extension Game {
    
  mutating func createAllHeroes(){

    for type in HeroType.allTypes{
        switch type{
        case .offense:
            for name in HeroName.heroes(with: type) { //[.genji, .mcCree, .pharah, .reaper, .solider76, .tracer]
                offenseCharacters.append(Hero(name: name))
            }
          case .defense:
            for name in HeroName.heroes(with: type) {
                defenseCharacters.append(Hero(name:name))
            }
            case .support:
            for name in HeroName.heroes(with: type) {
                supportCharacters.append(Hero(name:name))
            }
        case .tank:
            for name in HeroName.heroes(with: type) {
                tankCharacters.append(Hero(name:name))
            }
            
    }
    
    
    
   
    
    }
    
}
    
    func heroesForType()-> [Hero] {
        switch self.heroType {
            case .offense: return offenseCharacters
            case .defense: return defenseCharacters
            case .support: return supportCharacters
            case .tank: return tankCharacters
        }
    }
}
