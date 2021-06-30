//
//  PhototTrial.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/06/21.
//

import Foundation
import SwiftUI

struct Photo: Identifiable {
    var id = UUID()
    var name: String
}

// Sample Data ...
let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }
