//
//  OXGame.swift
//  NoughtsAndCrosses
//
//  Created by Lauren Caverly on 5/30/16.
//  Copyright © 2016 Julian Hulme. All rights reserved.
//

import Foundation

enum CellType: String {
    
    case O = "O"
    
    case X = "X"
    
    case EMPTY = ""
}



enum OXGameState: String {
    
    case inProgress
    
    case complete_no_one_won
    
    case compete_someone_won
}



class OXGame {
    
    private var board = [CellType] (count: 9, repeatedValue: CellType.EMPTY)
    
    private var startType: CellType = CellType.X
    
    func turn() -> Int {
        
        var count = 0
        
        for cell in board {
            if cell != CellType.EMPTY {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    func whosTurn() -> CellType {
        
        if turn() % 2 != 0 {
            return CellType.X
        } else {
            return CellType.O
        }
    }
    
    
    
    func typeAtIndex(index: Int) -> CellType {
        return board[index]
    }
    
    
    
    func playMove(button: Int) -> CellType {
        
        if turn() % 2 != 0 {
            board[button] = CellType.X
        } else {
            board[button] = CellType.O
        }
        
        return board[button]
    }
    
    
    
    func computerWinner() -> Bool {
        
        //check for COMPUTER winner in rows
        if board[0] == CellType.O && board[1] == CellType.O && board[2] == CellType.O {
            return true
        } else if board[3] == CellType.O && board[4] == CellType.O && board[5] == CellType.O {
            return true
        } else if board[6] == CellType.O && board[7] == CellType.O && board[8] == CellType.O {
            return true
            
        //check for COMPUTER winner in columns
        } else if board[0] == CellType.O && board[3] == CellType.O && board[6] == CellType.O {
            return true
        } else if board[1] == CellType.O && board[4] == CellType.O && board[7] == CellType.O {
            return true
        } else if board[2] == CellType.O && board[5] == CellType.O && board[8] == CellType.O {
            return true
                
        //check for COMPUTER winner in diagonals
        } else if board[0] == CellType.O && board[4] == CellType.O && board[8] == CellType.O {
            return true
        } else if board[2] == CellType.O && board[4] == CellType.O && board[6] == CellType.O {
            return true
            
        //otherwise no winner
        } else {
            return false
        }
    }
    
    
    func playerWinner () -> Bool {
    
        //check for PLAYER winner in rows
        if board[0] == CellType.X && board[1] == CellType.X && board[2] == CellType.X {
            return true
        } else if board[3] == CellType.X && board[4] == CellType.X && board[5] == CellType.X {
            return true
        } else if board[6] == CellType.X && board[7] == CellType.X && board[8] == CellType.X {
            return true
        
        //check for PLAYER winner in columns
        } else if board[0] == CellType.X && board[3] == CellType.X && board[6] == CellType.X {
            return true
        } else if board[1] == CellType.X && board[4] == CellType.X && board[7] == CellType.X {
            return true
        } else if board[2] == CellType.X && board[5] == CellType.X && board[8] == CellType.X {
        return true
        
        //check for PLAYER winner in diagonals
        } else if board[0] == CellType.X && board[4] == CellType.X && board[8] == CellType.X {
            return true
        } else if board[2] == CellType.X && board[4] == CellType.X && board[6] == CellType.X {
            return true
        } else {
            return false
        }
}
    
    func winDetection() -> Bool {
        if playerWinner() == true || computerWinner() == true {
            return true
        } else {
            return false
        }
    }
    
    
    
    func state() -> String {
        
        let isWinner: Bool = winDetection()
        
        if isWinner == true {
            return "complete_someone_won"
        } else if (isWinner == false) && (turn() == 9) {
            return "complete_no_one_won"
        } else {
            return "inProgress"
        }
    }
    
    
    
    func reset() {
        board = [CellType] (count: 9, repeatedValue: CellType.EMPTY)
    }
}
