//
//  Gradients.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 31/12/21.
//

import SwiftUI

struct Patterns: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.red, Color.blue]
            ), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)

    }
}

struct Patterns_Previews: PreviewProvider {
    static var previews: some View {
        Patterns()
    }
}
