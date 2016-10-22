//
//  SelectionViewController.swift
//  Overwatch
//
//  Created by Jacqueline Minneman on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit

class SelectionViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var characterStackView: UIStackView!

    @IBOutlet weak var characterStackViewWidthConstraint: NSLayoutConstraint!

    @IBOutlet weak var containerView: UIView!
    
     @IBOutlet weak var heroNameLabel: UILabel!

    @IBOutlet weak var heroScrollView: UIScrollView!
    
    @IBAction func changeInHeroType(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0: HeroType.offense
        case 1: HeroType.defense
        case 2: HeroType.tank
        case 3: HeroType.support
        default: break
        }
    }
    
    var game: Game {
        return Game()
    }
    
    var heroType: HeroType! {
        didSet {
            heroType = game.heroType
            updateStackViewWithHeroes()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        heroScrollView.delegate! = self
    }

    
    override func viewWillAppear(_ animated: Bool) {
        heroType = .offense
    }
    
    func updateStackViewWithHeroes(){
        
        let firstOffenseImage = UIImageView()
        
        firstOffenseImage.image = game.heroes[0].image
        
        
        characterStackView.addArrangedSubview(firstOffenseImage)
        
        
        
        //udpate the stack with the images related to the array [.offense], etc.
//        characterStackViewWidthConstraint = characterStackView.widthAnchor.constraint(equalTo: characterStackView.widthAnchor, multiplier: //arraycount)
        

}


}





