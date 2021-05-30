//
//  TabBraViewRouter.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/05/31.
//

import SwiftUI

class TabBarViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

enum Page {
    case home
    case timetable
    case syllabus
    case user
}
