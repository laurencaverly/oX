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
        
        self.resetGame()
    }
     

    @IBAction func buttonTapped(sender: AnyObject) {
        
        let tag = sender.tag
        print("Button \(tag) tapped!")
        
        gameObject.playMove(tag)
        
        sender.setTitle("X", forState: UIControlState.Normal)
        
        let gameState: String = gameObject.state()
        
        //This is kind of where I went wrong
    }
    
    func resetGame() {
        
        gameObject.reset()
        
        //this is where I really went wrong..I was so close
        
        //I created a reference objects to each of the buttons so I could rename the text, then I started getting errors. Did a lot of googling, deleted the references to the IBOutlets in the BoardViewController.xib but continued to get errors & eventually went to bed
        
        //I was going to start over and just copy & paste my code, but wasn't sure how the whole "pull requesting" thing would work if I did that
        
    }
    
}
