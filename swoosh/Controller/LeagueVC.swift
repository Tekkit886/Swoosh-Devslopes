//
//  LeagueVC.swift
//  swoosh
//
//  Created by Brian Martin on 4/12/18.
//  Copyright © 2018 Brian Martin. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBTN: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBTN.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player 
        }
    }

}
