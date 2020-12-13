//
//  main.swift
//  programmers_crain
//
//  Created by 최유진 on 2020/12/13.
//

import Foundation

let n1 = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let n2 = [1,5,3,5,1,2,1,4]

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var box = [Int]()
    var fboard = board
    var fmoves = moves
    var result: Int = 0
    NSLog("board[0].count: \(board[0].count)")
    while !fmoves.isEmpty {
        
        for i in 0..<board[0].count {
            
            NSLog("\ni = \(i)\nfmoves count: \(fmoves.count)")
            
            if fboard[board[0].count - 1][fmoves[0]-1] == 0 {
                fmoves.removeFirst()
                break
            } else if fboard[i][fmoves[0]-1] != 0 {
                if fboard[i][fmoves[0]-1] == box.last {
                    box.removeLast()
                    result += 2
                } else {
                    box.append(fboard[i][fmoves[0]-1])
                }
                fboard[i][fmoves[0]-1] = 0
                fmoves.removeFirst()
                break
            }
        }
    }
    return result
}

print(solution(n1, n2))

