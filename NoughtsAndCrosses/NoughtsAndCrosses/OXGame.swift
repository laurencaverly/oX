//
//  File.swift
//  NoughtsAndCrosses
//
//  Created by Lauren Caverly on 5/30/16.
//  Copyright © 2016 Julian Hulme. All rights reserved.
//

import Foundation

enum CellType {
    
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
    
}