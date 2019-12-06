//
//  Analysis.swift
//  budget_app
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI
//import SwiftUICharts

struct AnalysisContentView: View {
    var body: some View{
//        TabView(selection: $tabIndex) {
//            BarCharts().tabItem { Group{
//                    Image(systemName: "chart.bar")
//                    Text("Bar charts")
//                }}.tag(0)
//            LineCharts().tabItem { Group{
//                    Image(systemName: "waveform.path.ecg")
//                    Text("Line charts")
//                }}.tag(1)
//            PieCharts().tabItem { Group{
//                    Image(systemName: "chart.pie")
//                    Text("Pie charts")
//                }}.tag(2)
//            LineChartsFull().tabItem { Group{
//                Image(systemName: "waveform.path.ecg")
//                Text("Full screen line charts")
//            }}.tag(3)
//        }
        return Analysis()
    }
}

struct Analysis: View {
    @State var selection: Int? = nil
    @State var pickerSelection = 0
    @State var barValues : [[CGFloat]] =
        [
        [5,40,10,5,20,5,30],
        [20,100,30,15,25,10,45],
        [100,200,120,40,160,60,115]
        ]
    var body: some View {
        //NavigationView(){
            ZStack{
                Color.init(red: 0.0, green: 0.29, blue: 0.21)
                    .edgesIgnoringSafeArea(.all)

                VStack{
                    Text("Spending Breakdown").foregroundColor(.white)
                        .font(.largeTitle)

                    Picker(selection: $pickerSelection, label: Text("Stats"))
                        {
                        Text("Weekly").tag(0)
                        Text("Monthly").tag(1)
                        Text("Yearly").tag(2)
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding(.horizontal, 10)

                    HStack(alignment: .center, spacing: 10)
                    {

                        ForEach(barValues[pickerSelection], id: \.self){
                            data in
                            
                            BarView(value: data, cornerRadius: CGFloat(10))
                        }
                    }.animation(.default)
                }
                
            }.navigationBarBackButtonHidden(true)
        //}
    }
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .darkGray
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
}

struct BarView: View{

    var value: CGFloat
    var cornerRadius: CGFloat
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 200).foregroundColor(.clear)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: value).foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                
            }.padding(.bottom, 8)
        }
        
    }
}
//
//struct BarCharts:View {
//    var body: some View {
//        VStack{
//            BarChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title", style: Styles.barChartStyleOrangeLight)
//        }
//    }
//}
//
//struct LineCharts:View {
//    var body: some View {
//        VStack{
//            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
//        }
//    }
//}
//
//struct PieCharts:View {
//    var body: some View {
//        VStack{
//            PieChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
//        }
//    }
//}
//
//struct LineChartsFull: View {
//    var body: some View {
//        VStack{
//            LineView(data: [8,23,54,32,12,37,7,23,43], title: "Line chart", legend: "Full screen").padding()
//            // legend is optional, use optional .padding()
//        }
//    }
//}
