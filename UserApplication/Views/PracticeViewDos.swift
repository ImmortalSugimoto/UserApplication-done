//
//  PracticeViewDos.swift
//  UserApplication
//
//  Created by Liban Abdinur on 8/2/22.
//

import SwiftUI

struct PracticeViewDos: View {
    
    var user: Users
    
    var body: some View {
        
        List{
            
            Text(String(user.id))
            Text(user.groupName)
            Text(user.designation ?? "")

            
            }
        .navigationTitle("info")
            
            
            

        
        
    }
}

struct PracticeViewDos_Previews: PreviewProvider {
    static var previews: some View {
        PracticeViewDos(user:Users(id: 0, email:"", firstName: "", groupName: "", designation: "", lastName: ""))
    }
}
