//
//  AboutCard.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/05/31.
//

import SwiftUI

// Card Model ...
struct Card: Identifiable {
    var id = UUID().uuidString
    var cardColor: Color
    var offset: CGFloat = 0
    var title: String
}
