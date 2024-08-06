//
//  File.swift
//  
//
//  Created by 박준하 on 8/6/24.
//

import UIKit

public extension UIFont {
    static func preferredFont(forTextStyle style: TextStyle, weight: Weight, addPoints: CGFloat = 0) -> UIFont {
        let descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let font = UIFont.systemFont(ofSize: descriptor.pointSize + addPoints, weight: weight)
        let metrics = UIFontMetrics(forTextStyle: style)
        return metrics.scaledFont(for: font)
    }
}
