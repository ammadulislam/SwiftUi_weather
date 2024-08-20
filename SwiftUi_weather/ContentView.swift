//
//  ContentView.swift
//  SwiftUi_weather
//
//  Created by Zafran Mac on 20/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // leading and trailing
        
//        ZStack {
//            LinearGradient(gradient:Gradient(colors: [.blue,.red, .white]), startPoint:.leading, endPoint:.trailing).edgesIgnoringSafeArea(.all)
//        }
//
//    }
       //top and bottom gradient
        ZStack {
            LinearGradient(gradient:
                            Gradient(colors:[.blue,.white]),
                           startPoint:.topLeading,
                           endPoint:.bottomTrailing).edgesIgnoringSafeArea(.all)
        }
        VStack{
            Text("Copertino")
        }

    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
