//
//  ChartSeries.swift
//
//  Created by Giampaolo Bellavite on 07/11/14.
//  Copyright (c) 2014 Giampaolo Bellavite. All rights reserved.
//

import UIKit

/**
Represent a series to draw in the line chart. Each series is defined with a dataset and appareance settings.
*/
class ChartSeries {
    let data: Array<(x: Float, y: Float)>
    var area: Bool = false
    var line: Bool = true
    var color: UIColor = ChartColors.blueColor() {
        didSet {
            colors = (above: color, below: color)
        }
    }
    var colors: (above: UIColor, below: UIColor) = (above: ChartColors.blueColor(), below: ChartColors.redColor())
    
    init(_ data: Array<Float>) {
       
        var mutableData : Array<(x: Float, y: Float)> = []
        for (x, y) in data.enumerate() {
            /*
            let point: (x: Float, y: Float) =
            var mutablePoint = point*/
            mutableData.append((x: Float(x), y: Float(y)))
        }
        self.data = mutableData
    }
    
    init(data: Array<(x: Float, y: Float)>) {
        self.data = data
    }
}

