//
//  AreaFrameworkTests.swift
//  AreaFrameworkTests
//
//  Created by Александр Горелкин on 09.02.2024.
//

import XCTest
@testable import ShapeAreaFramework

final class TriangleTests: XCTestCase {
    var triangle: TriangleProtocol!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        triangle = try TriangleShape(sideA: 9, sideB: 12, sideC: 15)
    }
    override func tearDownWithError() throws {
        triangle = nil
        try super.tearDownWithError()
    }
    func testtriangleArea() throws {
        let area: Double = 54.0
        XCTAssertEqual(triangle.area, area)
    }
    func testtriangleAreaDoubleFormatter() throws {
        let area: Double = 54.00
        XCTAssertEqual(triangle.formattedAreaDouble, area)
    }
    func testtriangleAreaStringFormatter() throws {
        let area: String = "54.00"
        XCTAssertEqual(triangle.formattedAreaString, area)
    }
    func testInvalidTriangle() throws {
        XCTAssertThrowsError(try TriangleShape(sideA: 1, sideB: 1, sideC: 3)) { error in
            guard let triangleError = error as? TriangleError else {
                return XCTFail("Ожидалась другая ошибка")
            }
            switch triangleError {
            case .invalidTriangle(let sideA, let sideB, let sideC):
                XCTAssertEqual(sideA, 1, "Неверное значение для стороны А")
                XCTAssertEqual(sideB, 1, "Неверное значение для стороны B")
                XCTAssertEqual(sideC, 3, "Неверное значение для стороны C")
            }
        }
    }
    func testRightTriangle() {
        let isRight: Bool = true
        XCTAssertEqual(triangle.isRightTriangle, isRight)
    }
}
