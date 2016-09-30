//
//  CustomKolodaView.swift
//  Koloda
//
//  Created by Eugene Andreyev on 7/11/15.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import UIKit
import Koloda

let defaultBottomOffset: CGFloat = 0
let defaultTopOffset: CGFloat = 20
let defaultHorizontalOffset: CGFloat = 10
let defaultHeightRatio: CGFloat = 1.25
let backgroundCardHorizontalMarginMultiplier: CGFloat = 0.25
let backgroundCardScalePercent: CGFloat = 1.5

class CustomKolodaView: KolodaView {

    override func frameForCard(at index: Int) -> CGRect {
        if index == 0 {
            let topOffset: CGFloat = defaultTopOffset
            let xOffset: CGFloat = defaultHorizontalOffset
            let width = frame.width - 2 * defaultHorizontalOffset
            let height = width * defaultHeightRatio
            let yOffset: CGFloat = topOffset
            let newFrame = CGRect(x: xOffset, y: yOffset, width: width, height: height)
            
            return newFrame
        } else if index == 1 {
            let horizontalMargin = -bounds.width * backgroundCardHorizontalMarginMultiplier
            let width = bounds.width * backgroundCardScalePercent
            let height = width * defaultHeightRatio
            return CGRect(x: horizontalMargin, y: 0, width: width, height: height)
        }
        return .zero
    }
 
}
