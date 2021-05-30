//
//  AboutUsContentView.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/05/31.
//

import SwiftUI

struct AboutUsContentView: View {
    
    @StateObject var homeModel = AboutUsCarouselViewModel()
    
    var body: some View {
        AboutUsHomeView()
        // Using it as an environment object ...
            .environmentObject(homeModel)
    }
}

struct AboutUsContentView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsContentView()
    }
}

