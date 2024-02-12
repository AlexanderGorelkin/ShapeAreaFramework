//
//  CircleTests.swift
//  AreaFrameworkTests
//
//  Created by Александр Горелкин on 12.02.2024.
//

import XCTest
@testable import ShapeAreaFramework

final class CircleTests: XCTestCase {
    
    var circle: CircleProtocol!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        circle = try CircleShape(radius: 5)
    }
    override func tearDownWithError() throws {
        circle = nil
        try super.tearDownWithError()
    }
    func testCircleArea() throws {
        let area: Double = 78.53981633974483
        XCTAssertEqual(circle.area, area)
    }
    func testCircleAreaDoubleFormatter() throws {
        let area: Double = 78.54
        XCTAssertEqual(circle.formattedAreaDouble, area)
    }
    func testCircleAreaStringFormatter() throws {
        let area: String = "78.54"
        XCTAssertEqual(circle.formattedAreaString, area)
    }
    func testCircleZeroRadius() throws {
        do {
            circle = try CircleShape(radius: 0)
            let expectation: Double = 0
            let radius = circle.radius
            let area = circle.area
            XCTAssertEqual(radius, expectation)
            XCTAssertEqual(area, expectation)
        } catch {
            XCTFail("Инициализация Circle не должна была вызвать ошибку")
        }
    }
    func testRadiusLessThenZero() {
        XCTAssertThrowsError(try CircleShape(radius: -5)) { error in
            guard let circleError = error as? CircleError else {
                return XCTFail("Ожидалась другая ошибка")
            }
            if case .invalidCircle(let radius) = circleError {
                XCTAssertEqual(radius, -5, "Некорректное значение радиуса в ошибке")
            }
        }
    }
}
