//
//  BoardViewController.swift
//  NoughtsAndCrosses
//
//  Created by Alejandro Castillejo on 5/27/16.
//  Copyright © 2016 Julian Hulme. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController {
    
    var gameObject = OXGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet var boardView: UIView!
    
    @IBAction func newGame(sender: AnyObject) {
        print("New Game button tapped!")
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        
        let tag = sender.tag
        print("Button \(tag) tapped!")
        
    }
    
}
