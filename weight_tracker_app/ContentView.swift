//
//  ContentView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 16.07.2022.
//

import SwiftUI



struct TitleView:View{
    var body:some View{
        Text("Welcome to \nWeight Tracker").font(AppFont.font(type: .ExtraLight, size:28)).multilineTextAlignment(.center).padding(.top,100).foregroundColor(AppColor.getColor(type:.DarkGray))
    }
}
struct TextView:View{
    var body: some View{
        VStack {
            Text("Follow your weight in a controlled way, notice the change, stay healthy and fit.").font(.body).foregroundColor(.gray)
        }
        
    }
}


struct ContentView: View {
    @State var isActive:Bool = false
    
    var body: some View {
   
        if self.isActive {
            HomeView()
        }else{
            ZStack(alignment:.top){
                Color("bgBlueColor")
                VStack {
                    
                    Image("ic_splash_logo")
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 90)
                    VStack(){
                        Image("bg_rounded_white")
                            .overlay(TitleView(),alignment:.top)
                            .overlay(TextView(),alignment: .center)
                            .shadow(color: .gray, radius: 1)
                            .padding(.top, 1.0)
                            .overlay(
                                Button(action: { self.isActive=true }) {
                                    Text("Get Started")
                                        .frame(width: 270 , height: 60, alignment: .center)
                                        .background(Color.indigo)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(20)
                                    
                                    Spacer()
                                    .frame(height: 160)}
                                    .frame(width: 200 , height: 250,alignment: .center),alignment:.bottom)
                      
                    }
                
                }
            }}


    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
