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
    
    var CourseList = ["Research Project", "Linear Algebra", "SwiftUI", "Computer Programming A"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    TermTitle()
                    Spacer()
                    Button(action:{}) {
                        NavigationLink(
                            destination: SyllabusSearchView(),
                            label: {
                                ZStack {
                                    Rectangle()
                                        .fill(Color("Red"))
                                        .frame(height:50)
                                    Text("-> Syllabus Search <-")
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white)
                                }
                            })
                    }
                    Spacer()
                    Text("Added course")
                        .font(.headline)
                    Spacer()
                    ForEach(CourseList, id: \.self) { String in
                        HStack{
                            Text(String)
                            RemoveCourse()
                        }
                    }
                    
                    // Search Bar
                    /*LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
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
                    .padding(.all, 10)*/
                }
            }
            .navigationTitle("Syllabus")
        }
    }
}

struct RemoveCourse: View{
    var body: some View {
        Button(action:{}) {
            Image(systemName: "minus.circle")
                .foregroundColor(Color.red)
        }
    }
}

struct SyllabusContentView_Previews: PreviewProvider {
    static var previews: some View {
        SyllabusContentView()
    }
}
