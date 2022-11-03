//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by ByteDance on 2022/10/18.
//

import SwiftUI

struct ContentView1: View {
   

    var body: some View {

        VStack{
            HStack{Text("xxxx").padding(.vertical)}
            HStack{
                Text("Strength")
            }.padding(.vertical)
            
           
        }.padding([.horizontal, .bottom])
        
        
        
    }
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
