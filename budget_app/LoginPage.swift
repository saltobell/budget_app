//
//  ContentView.swift
//  LoginPage
//
//  Created by Gordon Huang on 12/1/19.
//  Copyright © 2019 Gordon Huang. All rights reserved.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State var toCreate = false
    @State var toForgot = false
    @State var toHome = false
    @State var toTransactions = false
    @State var toCategories = false
    @State var toAnalysis = false
    @State var previousMonths = false
    @State var graph = false
    @State var acct = false
    @State var priv = false
    @State var notification = false

    
    var body: some View {
        return Group {
            if toCreate {
                CreateAccount(toCreate: $toCreate)
            }
            else if toForgot{
                Forgot(toForgot: $toForgot)
            }
            else if toHome{
                HomeTabView(total: "", remaining: "", food: "", housing: "", utilities: "", transportation: "", entertainment: "", school: "", other: "")
            }
            else {
                LoginPage(toCreate: $toCreate, toForgot: $toForgot, toHome:$toHome)
            }
        }
    }
}

struct LoginPage: View {
    @State var email = ""
    @State var password = ""
    @State var shown = false
    @State var msg = ""
    @Binding var toCreate: Bool
    @Binding var toForgot: Bool
    @Binding var toHome: Bool
    
    //let dataJsonUrlClass = JsonClass()
    
    var body: some View {
        ZStack(){
            Color.init(red: 0.0, green: 0.29, blue: 0.21)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Image("LeafLogo")
                    .resizable()
                    //.aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                Text("Login")
                    .font(.custom("HelveticaNeue", size: 36))
                    //.position(x: 200, y: 150)
                    .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
//                Text("")
                Text("")
                HStack(){
                    Text("Email")
                    TextField("", text: $email)
                        .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                HStack(){
                    Text("Password")
                    SecureField("", text: $password)
                        .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .foregroundColor(.init(red: 1.0, green: 1.0, blue: 1.0))
                //.position(x: 250, y: 350)
            
                Button(action: {
                    self.toCreate = true
                })
                {
                    Text("Create an acccount")
                }
                    
                Text("")
                
                Button(action: {
                    self.toForgot = true
                })
                {
                    Text("Forgot your password?")
                }
                
                Text("")
                
                Button(action: {
                    if self.email == "" && self.password == ""{
                         self.msg = "Fill The Contents"
                         self.shown.toggle()
                         return
                     }
                     
                     Auth.auth().signIn(withEmail: self.email, password: self.password) { (res,err) in
                         
                         if err != nil{
                             print(err!.localizedDescription)
                             self.msg = err!.localizedDescription
                             self.shown.toggle()
                             return
                         }
                         
                         //self.msg = "Success"
                         //self.shown.toggle()
                        self.toHome = true
                         
                     }
                    
                    /*let email2 = self.email
                    let password2 = self.password
                    
                    if email2 == "" || password2 == ""{
                        return
                    }
                    
                    let data_to_send = ["email2": email2, "password2": password2] as NSMutableDictionary
                    
                    //print("\(data_to_send)")
                    self.dataJsonUrlClass.arrayFromJson(url:"connect_app_db/login2.php", data_sent:data_to_send){
                        (array_response) in
                        DispatchQueue.main.async{
                            let data_dictionary = array_response?.object(at:0) as! NSDictionary
                            if let errormessage = data_dictionary.object(forKey: "error_message") as! String?{
                                print("\(errormessage)")
                                if let error = data_dictionary.object(forKey: "error") as! Int?{
                                    if error == 1{
                                        print("\(error)")
                                    }
                            }
                        }
                    }*/
                    //print("User: \(self.email)")
                    //print("Pass: \(self.password)")
                    //if username and password match, set loginSuccess to true and call the information for that user
                    //}
                }){
                    ZStack(){
                        Rectangle()
                            .fill(Color.white)
                            .border(Color.black, width: 1.0)
                            .frame(width: 150, height: 50, alignment: .center)
                            Text("Login")
                                .foregroundColor(.init(red: 0.0, green: 0.0, blue: 0.0))
                    }
                }
                
                //.position(x: 200, y: 400)
            }
                .alert(isPresented: $shown) {
                    
                    return Alert(title: Text(self.msg))
                }
        .padding()
        }
    }
}
