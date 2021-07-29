//
//  TimeTableContentView.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/06/21.
//

import Foundation
import SwiftUI

struct TimetableContentView: View {
    var body: some View {
        VStack{
            TermTitle()
            HStack{
                Column(content: "M")
                Column(content: "T")
                Column(content: "W")
                Column(content: "T")
                Column(content: "F")
                Column(content: "S")
            }
        }
    }
}

struct TermTitle: View {
    @State var spring: Bool = true
    
    var body: some View {
        HStack{
            Button(action: {
                spring = !spring
            }, label: {
                Image(systemName: "chevron.left.circle")
            })
            
            Spacer()
            if spring {
                Text("Spring / Summer")
            } else {
                Text("Autumn / Winter")
            }
            Spacer()
            
            Button(action: {
                spring = !spring
            }, label: {
                Image(systemName: "chevron.right.circle")
            })
        }
        .padding(.horizontal)
    }
}

struct Period: View {
    var day: String
    var time: String
    
    var body: some View {
        ZStack{
            Text(day)
            Text(time)
            Rectangle()
                .fill(Color.white)
            Text("dummy class")
        }
    }
}

struct Column: View {
    var content: String
    
    var body: some View {
        Form{
            Section{
                Text(content)
            }
            Section{
                Period(day: content,time: "1")
                Period(day: content,time: "2")
                Period(day: content,time: "3")
                Period(day: content,time: "4")
                Period(day: content,time: "5")
                Period(day: content,time: "6")
                Period(day: content,time: "7")
            }
        }
    }
}

struct TimetableContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableContentView()
    }
}
