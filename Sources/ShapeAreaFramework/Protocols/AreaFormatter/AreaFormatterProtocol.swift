//
//  AreaFormatter.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public protocol AreaFormatterProtocol: ShapeProtocol {
    /// Возвращает строкое значение для площади фигуры
    var formattedAreaString: String { get }
    /// Возвращает значение плозади фигуры, округленное до двух знаков
    var formattedAreaDouble: Double { get }
}
extension AreaFormatterProtocol {
    public var formattedAreaDouble: Double {
        (area * 100).rounded() / 100
    }
    public var formattedAreaString: String {
         String(format: "%.2f", area)
    }
}
