//
//  practiceView.swift
//  UserApplication
//
//  Created by Liban Abdinur on 7/28/22.
//

import SwiftUI

struct practiceView: View {
    
    @StateObject var viewModel = UsersViewModel()
    @State private var choice: Int = 0
    
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(viewModel.Filteredusers, id:\.self){ Uzer in
                    HStack{
                        NavigationLink(destination: PracticeViewDos(user: Uzer)){
                            VStack{
                                Text("user id is: " + (String(Uzer.id)))
                                Text("first name: " + (Uzer.firstName ?? ""))
                                    .bold()
                                Text("email is: " + Uzer.email)
                        
                            }
                        }
                    }
                }
                
                
                
                
                
            }//end of list
            .navigationTitle("Employees")
            .onAppear{
                viewModel.getData()
            }
            
            
            
            
            
            
        }//end of naviagtion view
        
        
        
    }//end of body
}

struct practiceView_Previews: PreviewProvider {
    static var previews: some View {
        practiceView()
    }
}
