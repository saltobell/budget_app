//
//  Categories.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/7/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI
struct CategoryContentView: View {

    @State var previousMonths = false
    @State var graph = false
    //@State var notification = false
    var body: some View {
        return Group {
            if previousMonths {
                PreviousMonths()
            }
            else if graph {
                //Graphical Summary()
                
            }
//            else if notification{
//                Settings_Notification()
//            }
            else{
                Categories(previousMonths: $previousMonths, graph: $graph)
            }
        }
    }
}
struct Categories: View {
    @Binding var previousMonths: Bool
    @Binding var graph: Bool
    @State var selection: Int? = nil

    var body: some View {
        NavigationView(){
            ZStack(){
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
                ScrollView(){
                Text("November Budget")
                    .font(.custom("HelveticaNeue", size: 24))
                    .foregroundColor(Color.white)
                    .position(x: 190, y: -80)
                VStack(spacing: 20){
                    Text("Food")
                    .frame(width: 125, height: 25, alignment: .leading)
                    ZStack(){
                        Rectangle()
                            .fill(Color.gray)
                            .border(Color.black, width: 0.5)
                        .position(x: 62, y: 5)
                            .frame(width:125, height: 25, alignment: .center)
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width:0.5)
                            .position(x: 12, y: 5)
                            .frame(width:75, height: 25, alignment: .center)
                    }
                    
                    Text("Housing")
                        .frame(width: 125, height: 25, alignment: .leading )
                    ZStack(){
                        Rectangle()
                            .fill(Color.gray)
                            .border(Color.black, width: 0.5)
                        .position(x: 62, y: 5)
                            .frame(width:125, height: 25, alignment: .center)
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width:0.5)
                            .position(x: 13, y: 5)
                            .frame(width:75, height: 25, alignment: .center)
                    }
                    
                    Text("Utilities")
                        .frame(width: 125, height: 25, alignment: .leading )
                    ZStack(){
                        Rectangle()
                            .fill(Color.gray)
                            .border(Color.black, width: 0.5)
                            .position(x: 62, y: 5)
                            .frame(width: 125, height: 25, alignment: .center )
                        Rectangle()
                            .fill(Color.green)
                            .border(Color.black, width: 0.5)
                            .position(x: 37, y:5 )
                            .frame(width: 100, height: 25, alignment: .center )
                    }
                    Text("Transportation")
                        .frame(width: 125, height: 25, alignment: .leading )
                    //leads to ERROR
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.gray)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 62, y: 5)
//                            .frame(width: 125, height: 25, alignment: .center )
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 0.5)
//                            .position(x: -33, y:5 )
//                            .frame(width: 30, height: 25, alignment: .center )
//                    }
                    Text("Entertainment")
                    .frame(width: 125, height: 25, alignment: .leading )
                    //leads to ERROR
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.gray)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 62, y: 5)
//                            .frame(width: 125, height: 25, alignment: .center )
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 37, y:5 )
//                            .frame(width: 100, height: 25, alignment: .center )
//                    }
                    Text("School")
                        .frame(width: 125, height: 25, alignment: .leading)
//                  leads to ERROR
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.gray)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 62, y: 5)
//                            .frame(width: 125, height: 25, alignment: .center )
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 37, y:5 )
//                            .frame(width: 100, height: 25, alignment: .center )
//                    }
                    Text("Other")
                    .frame(width: 125, height: 25, alignment: .leading)
//                  leads to ERROR
//                    ZStack(){
//                        Rectangle()
//                            .fill(Color.gray)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 62, y: 5)
//                            .frame(width: 125, height: 25, alignment: .center )
//                        Rectangle()
//                            .fill(Color.green)
//                            .border(Color.black, width: 0.5)
//                            .position(x: 37, y:5 )
//                            .frame(width: 100, height: 25, alignment: .center )
//                    }
                }
                .font(.custom("HelveticaNeue", size: 18))
                .foregroundColor(Color.white)
                .frame(width: 125, height: 25, alignment: .center )
                .position(x: 145, y: 120)
                
                HStack(spacing: 90){
                    NavigationLink(destination: PreviousMonths(), tag: 1, selection: $selection) {
                        Button("Previous Months") {
                            self.selection = 1
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                    NavigationLink(destination: Analysis(), tag: 2, selection: $selection) {
                        Button("Analysis") {
                            self.selection = 2
                        }
                        .frame(width: 130, height: 35, alignment: .center)
                        .border(Color.white, width: 1.0)
                    }
                }
                    .font(.custom("HelveticaNeue", size: 12))
                    .foregroundColor(Color.white)
                    .position(x: 190, y: 350)
            }
            }
        }
    }
}

