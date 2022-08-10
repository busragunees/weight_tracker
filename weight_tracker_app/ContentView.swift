//
//  ContentView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 16.07.2022.
//

import SwiftUI


struct TitleView:View{
    var body:some View{
        Text("Don't lose faith \n\(Text("lose weight").foregroundColor(AppColor.getColor(type: .purpleColor)))")
            .font(AppFont.font(type: .Bold, size:28))
            .multilineTextAlignment(.center).padding(.top,100)
            .foregroundColor(AppColor.getColor(type:.ChartTitle))
            .padding(.bottom)
    }
}
/*
 splashtaki tartı altındaki metin.
 Text("Follow your weight in a controlled way, notice the change, stay healthy and fit.").font(.body).foregroundColor(.gray)*/

struct ContentView: View {
    @State var isActive:Bool = false
    
    var body: some View {
   
        if self.isActive {
            HomeView()
        }else{
            ZStack(alignment:.top){
                Color("purpleColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("ic_splash_logo")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,30)
                        .padding(.bottom,-7)
                        .padding(.leading,40)
                        .padding(.trailing,8)

                    
                    ZStack(){Color.white.edgesIgnoringSafeArea(.all).shadow(color: Color.white,radius: 10)
                                        
                    VStack{
                        TitleView()
                        Button(action: { self.isActive=true }){
                        Text("Get Started")
                        .frame(width: 350 , height: 63, alignment: .center)
                        .background(AppColor.getColor(type: .purpleColor))
                        .foregroundColor(Color.white)
                        .font(AppFont.font(type:.Bold, size:27))
                        .cornerRadius(18) }
                        .padding(.top,50)
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
