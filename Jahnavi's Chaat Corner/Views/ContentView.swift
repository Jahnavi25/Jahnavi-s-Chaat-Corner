//
//  ContentView.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            NavigationView {
                VStack{
                    NavigationLink(destination: HomepageView()){
                        
                        Image("logo")
                            .position(x: 178,y: 300)
                    }
                    
                    Spacer()
                }
                .padding()
            }
            
        }
      
    }


struct ContentView_Previews : PreviewProvider {
    static var previews : some View {
        ContentView()
    }
}

