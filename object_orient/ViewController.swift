//
//  ViewController.swift
//  object_orient
//
//  Created by Kevin Abram on 15/05/19.
//  Copyright © 2019 Kevin Abram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let goldLaptop = expensiveLaptops(name: "Gold Laptop", description: "This is frikin awesome")
        goldLaptop.say()
        goldLaptop.pressKey()
        goldLaptop.boast()
        goldLaptop.doStupidThing(action: .hug)
        goldLaptop.doStupidThing(action: .say)
        
        nameLabel.text = goldLaptop.name
        priceLabel.text = String(goldLaptop.price)
        descriptionLabel.text = goldLaptop.description
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
