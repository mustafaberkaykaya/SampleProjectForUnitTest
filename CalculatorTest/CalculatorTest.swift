//
//  CalculatorTest.swift
//  CalculatorTest
//
//  Created by Mustafa Berkay Kaya on 19.01.2022.
//

import XCTest
@testable import SampleExample

class CalculatorTest: XCTestCase {
    var firstNumber = 0
    var secondNumber = 0
    
    override func setUpWithError() throws {
        firstNumber = 40
        secondNumber = 20
    }

    override func tearDownWithError() throws {
    }

    func testAddExample() throws {
        let result = MathOperator().addNumbers(firstNumber: firstNumber, secondNumber: secondNumber)
        XCTAssertEqual(result,60)
        XCTAssertNotNil(result)
        XCTAssertLessThan(result, 100)
        XCTAssertNotEqual(result, 600)
        XCTAssertGreaterThan(result,50)
    }
    
    func testDifferenceExample() throws {
        let result = MathOperator().differenceNumbers(firstNumber: firstNumber, secondNumber: secondNumber)
        XCTAssertEqual(result,20)
        XCTAssertNotNil(result)
        XCTAssertLessThan(result, 21)
        XCTAssertNotEqual(result, 23)
        XCTAssertGreaterThan(result,12)
    }
    
    func testMultiplyExample() throws {
        let result = MathOperator().multipleNumbers(firstNumber: firstNumber, secondNumber: secondNumber)
        XCTAssertEqual(result,800)
        XCTAssertNotNil(result)
        XCTAssertLessThan(result, 802)
        XCTAssertNotEqual(result, 0)
        XCTAssertGreaterThan(result,750)
    }
    
    func testDivideExample() throws {
        let result = MathOperator().divideNumbers(firstNumber: firstNumber, secondNumber: secondNumber)
        XCTAssertEqual(result,2)
        XCTAssertNotNil(result)
        XCTAssertLessThan(result, 3)
        XCTAssertNotEqual(result, 3)
        XCTAssertGreaterThan(result,-1)
    }

    func testPerformanceExample() throws {
        measure {
        }
    }
}
