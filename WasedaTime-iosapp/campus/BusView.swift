//
//  BusView.swift
//  WasedaTime-iosapp
//
//  Created by 顧嘉賢 on 2021/06/17.
//

import Foundation
import SwiftUI

struct BusView: View {
    @State var showDatePicker: Bool = false
    @State var savedDate: Date? = nil
    @State var date: Date = Date()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("From")
                .font(.system(size: 30, weight: .regular, design: .default))
                Menu {
                    Button(action: {
                        // action
                    }, label: {
                        Text("Waseda Campus")
                    })
                    Button(action: {
                        // action
                    }, label: {
                        Text("Nishiwaseda Campus")
                    })
                } label: {
                    Label(
                        title: { Text("Departure")
                            .font(.system(size: 50, weight: .bold, design: .default))
                            .foregroundColor(Color("Red")) },
                        icon: { Image(systemName: "") }
                    )
                }
                
                HStack {
                    Image(systemName: "arrow.up")
                    Image(systemName: "arrow.down")
                }
                .font(.system(size: 25, weight: .regular, design: .default))
                
                Text("To")
                    .font(.system(size: 30, weight: .regular, design: .default))
                Menu {
                    Button(action: {
                        // action
                    }, label: {
                        Text("Nishiwaseda Campus")
                    })
                    Button(action: {
                        // action
                    }, label: {
                        Text("Waseda Campus")
                    })
                } label: {
                    Label(
                        title: { Text("Arrival")
                            .font(.system(size: 50, weight: .bold, design: .default))
                            .foregroundColor(Color("Red")) },
                        icon: { Image(systemName: "") }
                    )
                }
                

                
                HStack {
                    Text("Departure Time")
                        .padding(5)
                    DatePicker("",selection: $date)
                        .datePickerStyle(CompactDatePickerStyle())
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding(5)
                }
                .font(.system(size: 20, weight: .medium, design: .default))
                Button(action: {
                    // action
                }, label: {
                    NavigationLink(destination: GoNow()) {
                        Text("Go!")
                            .font(.system(size: 50, weight: .regular, design: .default))
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color("Red"))
                            .clipShape(Circle())
                    }
                })
            }
            .navigationTitle("Campus")
        }
    }
}

struct BusView_Previews: PreviewProvider {
    static var previews: some View {
        BusView()
    }
}

struct DatePickerWithButtons: View {
    
    @Binding var showDatePicker: Bool
    @Binding var savedDate: Date?
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ZStack {
            
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                DatePicker("Test", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Divider()
                HStack {
                    
                    Button(action: {
                        showDatePicker = false
                    }, label: {
                        Text("Cancel")
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        savedDate = selectedDate
                        showDatePicker = false
                    }, label: {
                        Text("Save".uppercased())
                            .bold()
                    })
                    
                }
                .padding(.horizontal)

            }
            .padding()
            .background(
                Color.white
                    .cornerRadius(30)
            )

            
        }

    }
}

struct GoNow: View {
    var body: some View {
        Text("Bus Data")
    }
}
