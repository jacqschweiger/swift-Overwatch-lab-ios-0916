//
//  OverwatchHero.swift
//  Overwatch
//
//  Created by Tanira Wiggins on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

typealias Health = Int

protocol Weapon {
    
    func fire()->String
    
    func heal()->String
}

protocol OverwatchHero : Weapon, CustomStringConvertible {
    var name: HeroName { get set }
    
    var hitPoints: Health { get set}
    
    var heroType: HeroType { get }
    
    
    func produceHeroType()->HeroType
    
    func produceInitialHitPoints()->Health
    
}

extension OverwatchHero {
    
    func fire()->String {
        switch heroType {
        case .offense: return "Offense: 👊🏽"
        case .defense: return "Defense: 🖐🏽"
        case .support: return "Support: 👐🏽"
        case .tank: return "Tank: ✊🏽"
        }
    }
    func heal() -> String{
        switch heroType {
        case .offense: return "Heal: ✖️"
        case .defense: return " Heal: ✖️"
        case .support: return "Heal: ❤️"
        case .tank: return "Heal: ✖️"
            
        }
    }
}

extension OverwatchHero {
    
    func produceHeroType()->HeroType{
        switch name {
        case .genji: return .offense
            
        case .mcCree: return .offense
            
        case .pharah: return .offense
            
        case .reaper: return .offense
            
        case .solider76: return .offense
            
        case .tracer: return .offense
            
        case .bastion: return .defense
            
        case .hanzo: return .defense
            
        case .junkrat: return .defense
            
        case .mei: return .defense
            
        case .torbjörn: return .defense
            
        case .widowmaker: return .defense
            
        case .dva: return .tank
            
        case .reinhardt: return .tank
            
        case .roadhog: return .tank
        
        case .winston: return .tank
            
        case .zarya: return HeroType.tank
            
        case .ana: return HeroType.support
            
        case .lúcio: return HeroType.support
            
        case .mercy: return HeroType.support
            
        case .symmetra: return HeroType.support
            
        case .zenyatta: return HeroType.support

        }
    }
    
    func produceInitialHitPoints()->Health{
        switch heroType{
        case .offense: return 250
        case .defense: return 250
        case .support: return 150
        case .tank: return 500
        }
    }
    
}

extension OverwatchHero {
    
    var description: String {
        return "Name: \(name)\nType: \(heroType.description)\nAttack: \(self.fire())\nHeal: \(self.heal())\nHit Points: \(produceInitialHitPoints())"
    }

        
    
}
