//
//  Day2.swift
//  AdventOfCode
//

import Foundation

final class Day2: Day {
    let pointMap = [ "A": 1, "B": 2, "C": 3, "X": 1, "Y": 2, "Z": 3 ]
    let gameMap = [ "A X": 3, "A Y": 6, "A Z": 0, "B X": 0, "B Y": 3, "B Z": 6, "C X": 6, "C Y": 0, "C Z": 3]
    let resultMap = ["X": 0, "Y": 3, "Z": 6]
    let riggedGameMap = [ "A X": 3, "A Y": 1, "A Z": 2, "B X": 1, "B Y": 2, "B Z": 3, "C X": 2, "C Y": 3, "C Z": 1]
    
    func part1(_ input: String) -> CustomStringConvertible {
        var sum = 0
        let games = input.components(separatedBy: .newlines)
        for game in games {
            let moves = game.components(separatedBy: .whitespaces)
            sum += pointMap[moves[1]]!
            sum += gameMap[game]!
        }
        
        return sum
    }

    func part2(_ input: String) -> CustomStringConvertible {
        var sum = 0
        let games = input.components(separatedBy: .newlines)
        for game in games {
            let moves = game.components(separatedBy: .whitespaces)
            sum += resultMap[moves[1]]!
            sum += riggedGameMap[game]!
        }
        
        return sum
    }
}
