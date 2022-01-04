//
//  TunedModable.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 2/01/22.
//

import SwiftUI

struct TunedModable<Content: View>: View {
    var theme = "client"
    @ViewBuilder var content:() ->  Content
    
    var body: some View {
        Patterns(theme: self.theme) {
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    content()
                }.frame(maxWidth: .infinity,minHeight:100)
                    .background(
                        VStack{
                            Circle()
                                .strokeBorder(.white, lineWidth: 5)
                                .frame(width: 120, height: 120)
                                .position(x: 25, y: 25)
                                .opacity(0.26)
                            HStack {
                                Spacer()
                                Circle()
                                    .strokeBorder(.white, lineWidth: 7)
                                    .frame(width: 170, height: 170)
                                    .opacity(0.26)
                                    .padding(.trailing, -85)
                                    .padding(.top, -50)
                            }
                            Circle()
                                .strokeBorder(.white, lineWidth: 10)
                                .frame(width: 230, height: 230)
                                .position(x: 10, y: 40)
                                .opacity(0.26)
                        }.frame(width: .infinity)
                    )
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: getGradientByTheme(theme: self.theme)
                        ),
                        startPoint: .bottom,
                        endPoint: .top
                    ).background(
                            Circle()
                                .frame(width: 50, height: 50)
                    )
                ).clipShape(
                    RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                ).shadow(radius: 5)
                Spacer()
                Text("Reciclando un mundo mejor").foregroundColor(.white)
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).padding()
        }
    }
}

struct TunedModable_Previews: PreviewProvider {
    static var previews: some View {
        TunedModable(theme: "company") {
            Text("Hello").padding()
            Text("Hello").padding()
            Text("Hello").padding()
            Text("Hello").padding()
            Text("Hello").padding()
        }
    }
}
