//
//  Day3.swift
//  AdventOfCode
//

import Algorithms
import Foundation

final class Day3: Day {
    func part1(_ input: String) -> CustomStringConvertible {
        var sum = 0
        let rucksacks = input.components(separatedBy: .newlines)
        for rucksack in rucksacks {
            let compartment1 = rucksack.prefix(rucksack.count/2)
            let compartment2 = rucksack.suffix(rucksack.count/2)
            
            for item in compartment1 {
                if compartment2.contains(item) {
                    sum += item.isUppercase ?
                    Int(exactly: item.asciiValue!)! - 38 :
                    Int(exactly: item.asciiValue!)! - 96
                    break
                }
            }
        }
        
        return sum
    }

    func part2(_ input: String) -> CustomStringConvertible {
        var sum = 0
        let rucksackGroups = input
            .components(separatedBy: .newlines)
            .chunks(ofCount: 3)
            .map(Array.init)
        
        for rucksacks in rucksackGroups {
            for item in rucksacks[0] {
                if rucksacks[1].contains(item) && rucksacks[2].contains(item) {
                    sum += item.isUppercase ?
                    Int(exactly: item.asciiValue!)! - 38 :
                    Int(exactly: item.asciiValue!)! - 96
                    break
                }
            }
        }
        
        return sum
    }
}
