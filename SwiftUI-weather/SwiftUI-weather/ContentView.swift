

import SwiftUI

struct ContentView: View {
    
    @State  private var isNight = false
    
    var body: some View {
        ZStack {
            backgroundview(isNight: $isNight)
            VStack(spacing:10){
                
               citytestview(cityname: "Capertino,FA")
                
                MainweatherstatusView(imagename:isNight ? "moon.stars.fill": "cloud.sun.fill", temperature: 76)
                
                
                HStack(spacing:20){
                    WeatherdayView(dayofWeek: "Tue", imagename: "cloud.sun.fill", temperature: 74)
                    
                    WeatherdayView(dayofWeek: "WED", imagename: "sun.max.fill", temperature: 76)
                    
                    WeatherdayView(dayofWeek: "THU", imagename: "sunset.fill", temperature: 74)
                    
                    WeatherdayView(dayofWeek: "FRI", imagename: "wind.snow", temperature: 55)
                    
                    WeatherdayView(dayofWeek: "SAT", imagename: "snow", temperature: 20)
                }
                Spacer()
                Button{
                    isNight.toggle()
                    print("tapped")
                } label: {
                    weatherButton(title: "Change day Time", textcolor: .blue, backgroundcolor: .white)
                }
                Spacer()
            }
                }

            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherdayView: View {
    var dayofWeek: String
    var imagename: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size:16,weight: .medium,design:.default))
                .foregroundColor(.white)
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40,height:40)
            Text("\(temperature)")
                .font(.system(size: 28,weight:.medium))
                .foregroundColor(.white)
        }
    }
}

struct backgroundview: View {
    @Binding var isNight : Bool
//    var topColor: Color
//    var bottomcolor: Color
    
    var body: some View {
        
        
        
        LinearGradient(gradient:Gradient(colors: [isNight ? .black : .blue, isNight ? .gray: Color("lightBlue")]), startPoint:.topLeading, endPoint:.bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}
struct citytestview:View{
    var cityname:String
    var body: some View{
        Text(cityname)
            .font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white)
            .padding()
    }
    
}

struct MainweatherstatusView:View{
var imagename: String
    var temperature :Int
    
    
    var body: some View{
        VStack(spacing:10){
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70,weight:.medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}


