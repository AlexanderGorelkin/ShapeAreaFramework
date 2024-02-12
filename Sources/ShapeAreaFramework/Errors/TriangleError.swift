//
//  TriangleError.swift
//  AreaFramework
//
//  Created by Александр Горелкин on 12.02.2024.
//

import Foundation
public enum TriangleError: Error {
    case invalidTriangle(sideA: Double, sideB: Double, sideC: Double)
}
