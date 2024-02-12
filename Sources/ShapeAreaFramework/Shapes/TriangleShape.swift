//
//  TrinagleShape.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public struct TriangleShape: TriangleProtocol {
    public var sideA: Double
    public var sideB: Double
    public var sideC: Double
    public init(sideA: Double, sideB: Double, sideC: Double) throws {
        guard sideA + sideB > sideC, sideB + sideC > sideA, sideC + sideA > sideB else {
            throw TriangleError.invalidTriangle(sideA: sideA, sideB: sideB, sideC: sideC)
        }
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    public var isRightTriangle: Bool {
        let sortedSides = [sideA, sideB, sideC].sorted()
        return pow(sortedSides[0], 2) + pow(sortedSides[1], 2) == pow(sortedSides[2], 2)
    }
    public var area: Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
}
extension TriangleShape: AreaFormatterProtocol { }
