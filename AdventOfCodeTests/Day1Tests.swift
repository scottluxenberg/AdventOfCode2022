//
//  Day1Tests.swift
//  Day1Tests
//

import XCTest

class Day1Tests: XCTestCase {
    let day = Day1()
    let input = """
                1000
                2000
                3000

                4000

                5000
                6000

                7000
                8000
                9000

                10000
                """

    func testPart1() throws {
        XCTAssertEqual(day.part1(input) as? Int, 24000)
    }

    func testPart2() throws {
        XCTAssertEqual(day.part2(input) as? Int, 45000)
    }

}
