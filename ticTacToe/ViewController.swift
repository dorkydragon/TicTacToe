//
//  ViewController.swift
//  ticTacToe
//
//  Created by Sophie on 3/17/19.
//  Copyright © 2019 Sophie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var win = false
    
    var allowedMovesPerm = ["a1", "a2", "a3",
                         "b1", "b2", "b3",
                         "c1", "c2", "c3"]
    
    var allowedMoves = ["a1", "a2", "a3",
                        "b1", "b2", "b3",
                        "c1", "c2", "c3"]
    
    var humanBoard = [0, 0, 0,
                      0, 0, 0,
                      0, 0, 0]
    
    var computerBoard = [0, 0, 0,
                         0, 0, 0,
                         0, 0, 0]
    
    @IBOutlet var gameResult: UILabel!
    
    @IBOutlet var a1: UIButton!
    @IBOutlet var a2: UIButton!
    @IBOutlet var a3: UIButton!
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var c1: UIButton!
    @IBOutlet var c2: UIButton!
    @IBOutlet var c3: UIButton!
    
    
    @IBAction func a1(_ sender: UIButton) {
        if allowedMoves.contains("a1") {
            
            if !win {
            a1.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "a1") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[0] = 1
            
            computerPick()
        } else {
            print("a1:o")
        }
        
    }
    
    @IBAction func a2(_ sender: UIButton) {
//        if a2.currentBackgroundImage != nil && !a2.currentBackgroundImage!.isEqual(UIImage(named: "o")) {
        
        if allowedMoves.contains("a2") {
            if !win {
            a2.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "a2") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[1] = 1
            
            computerPick()
        }
    }
    
    @IBAction func a3(_ sender: UIButton) {
        if allowedMoves.contains("a3") {
            
            if !win {
            a3.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "a3") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[2] = 1
            
            computerPick()
        }
    }
    
    @IBAction func b1(_ sender: UIButton) {
        if allowedMoves.contains("b1") {
            
            if !win {
            b1.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "b1") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[3] = 1
            
            computerPick()
        }
    }
    
    @IBAction func b2(_ sender: UIButton) {
        if allowedMoves.contains("b2") {
            
            if !win {
            b2.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "b2") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[4] = 1
            
            computerPick()
        }
    }
    
    @IBAction func b3(_ sender: UIButton) {
        if allowedMoves.contains("b3") {
            
            if !win {
            b3.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "b3") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[5] = 1
            
            computerPick()
        }
    }
    
    @IBAction func c1(_ sender: UIButton) {
        if allowedMoves.contains("c1") {
            
            if !win {
            c1.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "c1") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[6] = 1
            
            computerPick()
        }
    }
    
    @IBAction func c2(_ sender: UIButton) {
        if allowedMoves.contains("c2") {
            
            if !win {
            c2.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "c2") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[7] = 1
            
            computerPick()
        }
    }
    
    @IBAction func c3(_ sender: UIButton) {
        if allowedMoves.contains("c3") {
            
            if !win {
            c3.setBackgroundImage(UIImage(named:"x")?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            
            if let index = allowedMoves.index(of: "c3") {
                allowedMoves.remove(at: index)
            }
            
            humanBoard[8] = 1
            
            computerPick()
        }
    }
    
    
    @IBAction func startOver(_ sender: UIButton) {
        a1.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        a2.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        a3.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        b1.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        b2.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        b3.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        c1.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        c2.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        c3.setBackgroundImage(UIImage(named:"nothing")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        humanBoard = [0, 0, 0,
                      0, 0, 0,
                      0, 0, 0]
        
        computerBoard = [0, 0, 0,
                         0, 0, 0,
                         0, 0, 0]

        allowedMoves = allowedMovesPerm
        
        gameResult.text = "Game on!"
        win = false
    }
    
    func computerPick() {
        
        humanWin()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            if self.allowedMoves.count > 1 {
            
                if !self.win {
                    if let randomElement = self.allowedMoves.randomElement() {
                
                        if let index = self.allowedMoves.index(of: randomElement) {
                            self.allowedMoves.remove(at: index)
                        }
                
                        if randomElement == "a1" {
                            self.a1.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[0] = 1
                        }
                        
                        if randomElement == "a2" {
                            self.a2.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            
                            self.computerBoard[1] = 1
                        }
                        
                        if randomElement == "a3" {
                            self.a3.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[2] = 1
                        }
                        
                        if randomElement == "b1" {
                            self.b1.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[3] = 1
                        }
                        
                        if randomElement == "b2" {
                            self.b2.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[4] = 1
                        }
                        
                        if randomElement == "b3" {
                            self.b3.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[5] = 1
                        }
                        
                        if randomElement == "c1" {
                            self.c1.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[6] = 1
                        }
                        
                        if randomElement == "c2" {
                            self.c2.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[7] = 1
                        }
                        
                        if randomElement == "c3" {
                            self.c3.setBackgroundImage(UIImage(named:"o")?.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.computerBoard[8] = 1
                        }
                }
            }
                
                self.computerWin()
            }
            
        }

    }
    
    func humanWin() {
        let rowA = humanBoard[0] + humanBoard[1] + humanBoard[2]
        let rowB = humanBoard[3] + humanBoard[4] + humanBoard[5]
        let rowC = humanBoard[6] + humanBoard[7] + humanBoard[8]
        let col1 = humanBoard[0] + humanBoard[3] + humanBoard[6]
        let col2 = humanBoard[1] + humanBoard[4] + humanBoard[7]
        let col3 = humanBoard[2] + humanBoard[5] + humanBoard[8]
        let diagR = humanBoard[6] + humanBoard[4] + humanBoard[2]
        let diagL = humanBoard[0] + humanBoard[4] + humanBoard[8]
        
        let winningCheck = [rowA, rowB, rowC, col1, col2, col3, diagR, diagL]
        
        for item in winningCheck  {
            if item == 3 {
                gameResult.text = "Human Won!"
                win = true
            }
        }
    }
    
    func computerWin() {
        let rowA = computerBoard[0] + computerBoard[1] + computerBoard[2]
        let rowB = computerBoard[3] + computerBoard[4] + computerBoard[5]
        let rowC = computerBoard[6] + computerBoard[7] + computerBoard[8]
        let col1 = computerBoard[0] + computerBoard[3] + computerBoard[6]
        let col2 = computerBoard[1] + computerBoard[4] + computerBoard[7]
        let col3 = computerBoard[2] + computerBoard[5] + computerBoard[8]
        let diagR = computerBoard[6] + computerBoard[4] + computerBoard[2]
        let diagL = computerBoard[0] + computerBoard[4] + computerBoard[8]
        
        let winningCheck = [rowA, rowB, rowC, col1, col2, col3, diagR, diagL]
        
        for item in winningCheck  {
            if item == 3 {
                gameResult.text = "Computer Won!"
                win = true
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        humanBoard = [0, 0, 0,
                          0, 0, 0,
                          0, 0, 0]
        
        computerBoard = [0, 0, 0,
                             0, 0, 0,
                             0, 0, 0]
        
    }
    
}
