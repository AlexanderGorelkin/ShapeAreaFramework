//
//  TriangleProtocol.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public protocol TriangleProtocol: ShapeProtocol, AreaFormatterProtocol {
    /// Сторона треугольника А
    var sideA: Double { get }
    /// Сторона треугольника В
    var sideB: Double { get }
    /// Сторона треугольника С
    var sideC: Double { get }
    /// Инициализатор для треугольника с заданными сторонами
    /// - Parameters:
    ///   - firstSide: Сторона треугольника А
    ///   - secondSide: Сторона треугольника В
    ///   - thirdSide: Сторона треугольника С
    init(sideA: Double, sideB: Double, sideC: Double) throws
    /// Является ли треугольник прямоугольным
    var isRightTriangle: Bool { get }
}
