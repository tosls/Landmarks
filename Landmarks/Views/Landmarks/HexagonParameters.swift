//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Антон Бобрышев on 07.09.2021.
//

import CoreGraphics

struct HexagonParameters {
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjusment: CGFloat = 0.085
    
    static let segments = [
        Segment(
                    line:    CGPoint(x: 0.60, y: 0.05),
                    curve:   CGPoint(x: 0.40, y: 0.05),
                    control: CGPoint(x: 0.50, y: 0.00)
                ),
                Segment(
                    line:    CGPoint(x: 0.05, y: 0.20 + adjusment),
                    curve:   CGPoint(x: 0.00, y: 0.30 + adjusment),
                    control: CGPoint(x: 0.00, y: 0.25 + adjusment)
                ),
                Segment(
                    line:    CGPoint(x: 0.00, y: 0.70 - adjusment),
                    curve:   CGPoint(x: 0.05, y: 0.80 - adjusment),
                    control: CGPoint(x: 0.00, y: 0.75 - adjusment)
                ),
                Segment(
                    line:    CGPoint(x: 0.40, y: 0.95),
                    curve:   CGPoint(x: 0.60, y: 0.95),
                    control: CGPoint(x: 0.50, y: 1.00)
                ),
                Segment(
                    line:    CGPoint(x: 0.95, y: 0.80 - adjusment),
                    curve:   CGPoint(x: 1.00, y: 0.70 - adjusment),
                    control: CGPoint(x: 1.00, y: 0.75 - adjusment)
                ),
                Segment(
                    line:    CGPoint(x: 1.00, y: 0.30 + adjusment),
                    curve:   CGPoint(x: 0.95, y: 0.20 + adjusment),
                    control: CGPoint(x: 1.00, y: 0.25 + adjusment)
                )

    ]
}
