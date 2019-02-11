//
//  Window_shopperTests.swift
//  Window-shopperTests
//
//  Created by Ravi Inder Manshahia on 11/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import XCTest

class Window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testWageCalculator()
    {
        XCTAssert(Wage.calculate(forWage: 25, withPrice: 100) == 4)
        XCTAssert(Wage.calculate(forWage: 13, withPrice: 99) == 8)
        XCTAssert(Wage.calculate(forWage: 12.2, withPrice: 1100) == 91)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
