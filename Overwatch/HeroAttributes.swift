//
//  HeroAttributes.swift
//  Overwatch
//
//  Created by Tanira Wiggins on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


enum HeroName: CustomStringConvertible {
    case genji
    
    case mcCree
    
    case pharah
    
    case reaper
    
    case solider76
    
    case tracer
    
    case bastion
    
    case hanzo
    
    case junkrat
    
    case mei
    
    case torbjörn
    
    case widowmaker
    
    case dva
    
    case reinhardt
    
    case roadhog
    
    case winston
    
    case zarya
    
    case ana
    
    case lúcio
    
    case mercy
    
    case symmetra
    
    case zenyatta
    
    var description: String {
        switch self {
        
        case .genji: return "Genji"
            
        case .mcCree: return "McCree"
            
        case .pharah: return "Pharah"
            
        case .reaper: return "Reaper"
            
        case .solider76: return "Solider 76"
            
        case .tracer: return "Tracer"
            
        case .bastion: return "Bastion"
            
        case .hanzo: return "Hanzo"
            
        case .junkrat: return "Junkrat"
            
        case .mei: return "Mei"
            
        case .torbjörn: return "Torbjörn"
            
        case .widowmaker: return "Widowmaker"
            
        case .dva: return "Dva"
            
        case .reinhardt: return "Reinhardt"
            
        case .roadhog: return "Roadhog"
            
        case .winston: return "Winston"
            
        case .zarya: return "Zarya"
            
        case .ana: return "Ana"
            
        case .lúcio: return "Lúcio"
            
        case .mercy: return "Mercy"
            
        case .symmetra: return "Symmetra"
            
        case .zenyatta: return "Zenyatta"

        
    }
}
        static func heroes(with type:HeroType)->[HeroName]{
            switch type {
            case .offense: return [.genji, .mcCree, .pharah, .reaper, .solider76, .tracer]
            case .defense: return [.bastion, .hanzo, .junkrat, .mei, .torbjörn, .widowmaker]
            case .tank: return [.dva, .reinhardt, .roadhog, .winston, .zarya]
            case .support: return [.ana, .lúcio, .mercy, .symmetra, .zenyatta]
            }
        }
}


    


enum HeroType: CustomStringConvertible {
    
    case offense
    
    case defense
    
    case support
    
    case tank
    
    var description: String {
        switch self{
            
            
        
        case .offense: return "Offense: 💥"
        
        case .defense: return "Defense: 🛡"
            
        case .support: return "Support: 🚑"
        
        case .tank: return "Tank: 🐼"
        }
    }
    
    static var allTypes: [HeroType] {
  return [.offense , .defense, .tank, .support]
    }
}
