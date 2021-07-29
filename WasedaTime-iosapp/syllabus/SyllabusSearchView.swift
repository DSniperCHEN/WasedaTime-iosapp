//
//  SyllabusSearchView.swift
//  WasedaTime-iosapp
//
//  Created by DSniper on 2021/7/28.
//

import Foundation
import SwiftUI

struct SyllabusSearchView: View {
    
    @State private var searchKey = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    TextField("keyword", text: $searchKey )
                    Text("Semester")
                    Text("School Selection")
                    Text("Language")
                    Text("Day")
                    Text("Period")
                    Text("Eligible Year")
                    Text("Credit")
                }
            }
            .navigationTitle("Syllabus Search")
        }
    }
}

struct SyllabusSearchView_Previews: PreviewProvider {
    static var previews: some View {
        SyllabusSearchView()
    }
}
