//
//  SideCustomCorners.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/05/31.
//

import SwiftUI

// Custom Corner Shapes ...
struct SideCustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
