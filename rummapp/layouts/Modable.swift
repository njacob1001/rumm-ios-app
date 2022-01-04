//
//  Modable.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 31/12/21.
//

import SwiftUI

struct Modable<Content:View> : View  {
    var theme = "client"
    @ViewBuilder var content:() ->  Content
    
    var body: some View {
        Patterns(theme: self.theme) {
            VStack(spacing: 50) {
                Spacer()
                
                VStack {
                    content()
                }
                .frame(maxWidth: .infinity)
                .background()
                .clipShape(
                    RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                ).shadow(radius: 5)
                
                Spacer()
                Text("Reciclando un mundo mejor").foregroundColor(.white)
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).padding()
        }
    }
}

struct Modable_Previews: PreviewProvider {
    static var previews: some View {
        Modable(theme: "collector"){
            Text("Hello world 1").padding()
            Text("Hello world 2").padding()
            Text("Hello world 3").padding()
        }
    }
}
