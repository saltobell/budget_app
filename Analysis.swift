//
//  Analysis.swift
//  budget_app
//
//  Created by Sydney Altobell on 11/27/19.
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
    var body: some View {
        Text("Analysis")
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
//


struct Analysis_Previews: PreviewProvider {
    static var previews: some View {
        Analysis()
    }
}
