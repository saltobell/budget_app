//
//  SwiftUIView.swift
//  budget_app
//
//  Created by Gordon Huang on 11/13/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct Transactions: View {
@State private var showingModal = false
@State private var transaction: String = ""
var body: some View {
    ZStack {
        Color.init(red: 0.0, green: 0.29, blue: 0.21)
        .edgesIgnoringSafeArea(.all)
        
        VStack(alignment: .leading, spacing: 2){
            Text("Total Budget:")
            Text("$650")
        }
        .font(.custom("HelveticaNeue-Light", size: 20))
        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        .position(x: 70, y: 64)
                        
        VStack(alignment: .trailing, spacing: 2){
            Text("Remaining Budget:")
            Text("$150")
        }
        .font(.custom("HelveticaNeue-Light", size: 20))
        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        .position(x: 280, y: 64)
                    
        VStack(alignment: .center){
            Text("Monthly")
            Text("Transactions")
        }
        .font(.custom("HelveticaNeue-Bold", size: 24))
        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        .position(x: 190, y: 150)
            
//        ZStack(){
//            Text("Sort By")
//                .font(.custom("HelveticaNeue", size: 16))
//                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//                .position(x: 40, y: 168)
//        }
        
        Button(action: {
            self.showingModal = true
        }) {
            ZStack(){
                Rectangle()
                    .fill(Color.white)
                    .border(Color.black, width: 1.0)
                    .frame(width: 30, height: 30, alignment: .center)
                Text(verbatim:"+")
                    .font(.custom("HelveticaNeue", size: 24))
                    .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
            }
        }
        .padding()
        .position(x: 340, y: 162)

        ZStack(){
            Rectangle()
                .fill(Color.gray)
                .border(Color.black, width: 1.0)
                .frame(width: 60, height: 25, alignment: .leading)
                Text("Date")
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                        
        }
        .position(x: 44, y: 200)
                    
        ZStack(){
            Rectangle()
                .fill(Color.gray)
                .border(Color.black, width: 1.0)
                .frame(width: 100, height: 25, alignment: .leading)
                Text("Name")
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        }
        .position(x: 123, y: 200)
                    
        ZStack(){
            Rectangle()
                .fill(Color.gray)
                .border(Color.black, width: 1.0)
                .frame(width: 100, height: 25, alignment: .leading)
                Text("Category")
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        }
        .position(x: 222, y: 200)

        ZStack(){
            Rectangle()
                .fill(Color.gray)
                .border(Color.black, width: 1.0)
                .frame(width: 90, height: 25, alignment: .leading)
                Text("Amount")
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
        }
        .position(x: 310, y: 200)
        
        /*HStack(){
            Button(action: {
                // your action here
            }) {
                ZStack(){
                    Rectangle()
                        .fill(Color.green)
                        .border(Color.white, width: 1.0)
                        .frame(width: 80, height: 80, alignment: .center)
                        Text("Home")
                }
            }
            Button(action: {
                // your action here
            }) {
                ZStack(){
                    Rectangle()
                        .fill(Color.green)
                        .border(Color.white, width: 1.0)
                        .frame(width: 80, height: 80, alignment: .center)
                        Text("Financial Literacy")
                }
            }
            Button(action: {
                // your action here
            }) {
                ZStack(){
                    Rectangle()
                        .fill(Color.green)
                        .border(Color.white, width: 1.0)
                        .frame(width: 80, height: 80, alignment: .center)
                        Text("Budget")
                }
            }
            Button(action: {
                // your action here
            }) {
                ZStack(){
                    Rectangle()
                        .fill(Color.green)
                        .border(Color.white, width: 1.0)
                        .frame(width: 80, height: 80, alignment: .center)
                        Text("Settings")
                }
            }

        }
        .position(x: 188, y: 600)
        .font(.custom("HelveticaNeue-Light", size: 16))
        .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))*/
        
        if $showingModal.wrappedValue {
                        // But it will not show unless this variable is true
            ZStack {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.vertical)
                // This VStack is the popup
                VStack(spacing: 20){
                    Text("Transaction")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                    HStack {
                        Text("Transaction")
                        TextField("transaction", text: $transaction)
                    }.padding()
                    
                    Button(action: {
                        self.showingModal = false
                    }) {
                        Text("Close")
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .cornerRadius(20).shadow(radius: 20)
                }
            }
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}

