//
//  AboutUsCarouselView.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/05/31.
//

import SwiftUI

class AboutUsCarouselViewModel: ObservableObject {
    @Published var cards = [
        Card(cardColor: Color("Red"), title: "Our Mission."),
        Card(cardColor: Color("Gray2"), title: "Timeline."),
        Card(cardColor: Color("Red"), title: "Join Us."),
    ]
    
    @Published var swipedCard = 0
    
    // Detail Content ...
    @Published var showCard = false
    @Published var selectedCard = Card(cardColor: .clear, title: "")
    @Published var showContent = false
    
    var content = "dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy dummy "
}
