//
//  CircleProtocol.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public protocol CircleProtocol: ShapeProtocol, AreaFormatterProtocol {
    /// Радиус круга
    var radius: Double { get }
    /// Инициализатор для круга с заданным радиусом
    /// - Parameter raduis: Радиус круга
    init(radius: Double) throws
}
