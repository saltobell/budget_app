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
    var body: some View {
        NavigationView{
            ZStack(){
             
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
                Text("November Budget")
                    .font(.custom("HelveticaNeue", size: 32))
                    .foregroundColor(Color.white)
                    .frame(width: 500, height: 250, alignment: .center )
                    .position(x: 150, y: 20)
                    //.navigationBarTitle("November Budget", displayMode: .large)
                VStack(spacing: 10 ){
                    Text("Groceries")
//                        .font(.custom("HelveticaNeue", size: 14))
//                            .foregroundColor(Color.white)
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
                            .position(x: 12, y:5 )
                            .frame(width: 75, height: 25, alignment: .center )
                    }
                    
                    Text("Restaurants")
//                        .font(.custom("HelveticaNeue", size: 14))
//                        .foregroundColor(Color.white)
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
                            .position(x: -13, y:5 )
                            .frame(width: 50, height: 25, alignment: .center )
                    }
                    
                    Text("Leisure")
//                        .font(.custom("HelveticaNeue", size: 14))
//                        .foregroundColor(Color.white)
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
                    Text("Other")
//                        .font(.custom("HelveticaNeue", size: 14))
//                        .foregroundColor(Color.white)
//
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
                            .position(x: -33, y:5 )
                            .frame(width: 30, height: 25, alignment: .center )
                    }
                    
                }
                .font(.custom("HelveticaNeue", size: 14))
                .foregroundColor(Color.white)
                .frame(width: 125, height: 25, alignment: .center )
                .position(x: 185, y: 200)
                
                HStack(spacing: 90){
                    Button(action:{
                        self.previousMonths = true
                    }) {
                        ZStack(){
                            Rectangle()
                                .fill(Color.green)
                                .border(Color.black, width: 1.0)
                                .frame(width: 100, height: 35, alignment: .center)
                            Text("Previous Months")
                        }
                    }
                    Button(action:{
                        self.graph = true
                    }){
                        ZStack(){
                            Rectangle()
                                .fill(Color.green)
                                .border(Color.black, width: 1.0)
                                .frame(width: 100, height: 35, alignment: .center)
                            Text("View Graphically")
                        }
                    }
                    
                }
                    .font(.custom("HelveticaNeue", size: 12))
                    .foregroundColor(Color.white)
                    .position(x: 185, y: 400)
                
                HStack(spacing: 5){
                    Button(action:{
                        //action here
                    }) {
                        ZStack(){
                            Rectangle()
                                .fill(Color.green)
                                .border(Color.black, width: 1.0)
                                .frame(width: 89, height: 60, alignment: .center)
                            Text("Home").foregroundColor(Color.white)
                            
                        }
                    }
                    Button(action:{
                        //action here
                    }){
                        ZStack(){
                            Rectangle()
                                .fill(Color.init(red: 0.0, green: 0.29, blue: 0.21))
                                .border(Color.init(red: 0.0, green: 0.29, blue: 0.21), width: 1.0)
                                .frame(width: 89, height: 60, alignment: .center)
                                Text("Budget").foregroundColor(Color.white)
                        }
                    }
                    Button(action:{
                        //action here
                    }){
                        ZStack(){
                            Rectangle()
                                .fill(Color.green)
                                .border(Color.black, width: 1.0)
                                .frame(width: 89, height: 60, alignment: .center)
                                Text("").foregroundColor(Color.white)
                        }
                    }
                    Button(action:{
                        //action here
                    }){
                        ZStack(){
                            Rectangle()
                                .fill(Color.green)
                                .border(Color.black, width: 1.0)
                                .frame(width: 89, height: 60, alignment: .center)
                            Text("Settings").foregroundColor(Color.white)
                            
                        }
                    }
                    
                }.position(x: 188.5, y: 515)
//               Button(action:{
//                    //action here
//                }){
//                    ZStack(){
//                        Image(systemName: "plus")
//                            .padding
//                            .background(Color.white)
//                            .clipShape(Circle())
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                    }
//                }.position(x: 150, y: 150)
            }
            
        }
    }
}

//struct Categories_Previews: PreviewProvider {
//    static var previews: some View {
//        Categories()
//    }
//}
