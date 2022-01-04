//
//  Login.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 2/01/22.
//

import SwiftUI

struct Login: View {
    var theme = "client"
    
    
    
    var body: some View {
        TunedModable(theme: self.theme) {
            Text("hello").padding()
            Text("hello").padding()
            Text("hello").padding()
            Text("hello").padding()
        }
            
        
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
