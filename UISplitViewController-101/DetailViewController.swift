//
//  DetailViewController.swift
//  UISplitViewController-101
//
//  Created by Burak Akin on 16.05.2020.
//  Copyright © 2020 Burak Akin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var weaponImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    private func configureCell(monster: Monster) {
        loadViewIfNeeded()
        nameLabel.text = monster.name
        descriptionLabel.text = monster.description
        iconImageView.image = monster.icon
        weaponImageView.image = monster.weapon.image
    }
    


}

extension DetailViewController: MonsterSelectionDelegate {
    func monsterSelected(_ newMonster: Monster) {
        configureCell(monster: newMonster)
    }
    
    
}
