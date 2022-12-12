//
//  Day1.swift
//  AdventOfCode
//

import Algorithms
import Foundation

final class Day1: Day {
    func part1(_ input: String) -> CustomStringConvertible {
        let elves = inputToElves(input)
        
        return elves.max() ?? 0
    }

    func part2(_ input: String) -> CustomStringConvertible {
        let elves = inputToElves(input)
        
        return elves
            .max(count: 3)
            .reduce(0, +)
    }
    
    private func inputToElves(_ input: String) -> [Int] {
        let rawElves = input.components(separatedBy: "\n\n")
        var elves: [Int] = Array(repeating: 0, count: rawElves.count)
        for (index, rawElf) in rawElves.enumerated() {
            elves[index] = rawElf.components(separatedBy: .newlines)
                .compactMap { Int($0) }
                .reduce(0, +)
        }
        
        return elves
    }
}
