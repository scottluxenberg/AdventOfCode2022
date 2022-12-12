//
//  Day2Tests.swift
//  Day2Tests
//

import XCTest

class Day2Tests: XCTestCase {
    let day = Day2()
    let input = """
                A Y
                B X
                C Z
                """

    func testPart1() throws {
        XCTAssertEqual(day.part1(input) as? Int, 15)
    }

    func testPart2() throws {
        XCTAssertEqual(day.part2(input) as? Int, 12)
    }

}
