//
//  CircleShape.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public struct CircleShape: CircleProtocol {
    public var radius: Double
    
    public init(radius: Double) throws {
        guard !radius.isLess(than: 0) else {
            throw CircleError.invalidCircle(radius: radius)
        }
        self.radius = radius
    }
    
    public var area: Double {
        Double.pi * pow(radius, 2)
    }
}
extension CircleShape: AreaFormatterProtocol { }
