//
//  WeatherButton.swift
//  SwiftUI-weather
//
//  Created by Zafran Mac on 21/08/2024.
//
import SwiftUI

struct weatherButton: View{
    var title:String
    var textcolor: Color
    var backgroundcolor: Color
    var body: some View{
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundcolor)
            .foregroundColor(textcolor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}
