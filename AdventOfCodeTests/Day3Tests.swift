//
//  Day3Tests.swift
//  Day3Tests
//

import XCTest

class Day3Tests: XCTestCase {
    let day = Day3()
    let input = """
                vJrwpWtwJgWrhcsFMMfFFhFp
                jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
                PmmdzqPrVvPwwTWBwg
                wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
                ttgJtRGJQctTZtZT
                CrZsJsPPZsGzwwsLwLmpwMDw
                """

    func testPart1() throws {
        XCTAssertEqual(day.part1(input) as? Int, 157)
    }

    func testPart2() throws {
        XCTAssertEqual(day.part2(input) as? Int, 70)
    }

}
