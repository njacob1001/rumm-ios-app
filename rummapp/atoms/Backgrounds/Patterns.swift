//
//  Gradients.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 31/12/21.
//

import SwiftUI

struct Patterns<Content: View>: View {
    var theme = "client"
    @ViewBuilder var content:() ->  Content
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: getGradientByTheme(theme: self.theme)
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            Image("Pattern")
                .resizable()
                .scaledToFit()
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
                )
            content()
        }.ignoresSafeArea()
        
    }
}

struct Patterns_Previews: PreviewProvider {
    static var previews: some View {
        Patterns(theme: "company") {
            Text("Hello v2")
        }
    }
}
