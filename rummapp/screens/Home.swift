//
//  Home.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 31/12/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        Modable {
            VStack{
                Image("IconColor")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                Text("Reciclando App")
                    .font(.headline)
                    .foregroundColor(CustomColor.brandColor)
                    .padding(.bottom)
                
                NavigationLink(destination: Login(theme: "client")){
                    Text("Client").padding().frame(maxWidth: .infinity).font(.headline)
                }.background(
                    Capsule()
                        .fill(CustomColor.secondary)
                )
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.top)
                
                NavigationLink(destination: Login(theme: "collector")){
                    Text("Collector").padding().frame(maxWidth: .infinity).font(.headline)
                }.background(
                    Capsule()
                        .fill(CustomColor.secondary)
                ).foregroundColor(.white).frame(maxWidth: .infinity).padding(.top, 10).padding(.bottom, 10)
                
                NavigationLink(destination: Login(theme: "company")){
                    Text("Company").padding().frame(maxWidth: .infinity).font(.headline)
                }.background(
                    Capsule()
                        .fill(CustomColor.secondary)
                ).foregroundColor(.white).frame(maxWidth: .infinity)
            }.padding(25)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
