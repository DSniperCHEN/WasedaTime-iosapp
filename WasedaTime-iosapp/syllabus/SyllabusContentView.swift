//
//  SyllabusContentView.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/06/30.
//

import Foundation
import SwiftUI

struct SyllabusContentView: View {
    
    @State var gridLayout: [GridItem] = [ GridItem() ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Search Bar
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        ForEach(samplePhotos.indices) { index in
                            Image(samplePhotos[index].name)
                                .resizable()
                                .scaledToFill()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 200)
                                .cornerRadius(10.0)
                                .shadow(color: Color.primary.opacity(0.3), radius: 1)
                        }
                    }
                    .padding(.all, 10)
                }
            }
            .navigationTitle("Syllabus")
        }
    }
}

struct SyllabusContentView_Previews: PreviewProvider {
    static var previews: some View {
        SyllabusContentView()
    }
}
