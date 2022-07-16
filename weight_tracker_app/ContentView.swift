//
//  ContentView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 16.07.2022.
//

import SwiftUI



struct TitleView:View{
    var body:some View{
        Text("Welcome to \nWeight Tracker").font(.system(size: 30).bold()).multilineTextAlignment(.center).padding(.top,100).foregroundColor(.indigo) //neden olusturdugum renk eklenmedi
    }
}
struct TextView:View{
    var body: some View{
        VStack {
            Text("Follow your weight in a controlled way, notice the change, stay healthy and fit.").font(.body).foregroundColor(.gray)
        }
        
    }
}

struct GetStartedButton:View{
    var body: some View{
        NavigationLink(destination: HomeView()){
            Text("Get Started")
                .frame(width: 200 , height: 50, alignment: .center)
                .background(Color.indigo)
                .foregroundColor(Color.white)
                .cornerRadius(8)
        }
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ZStack(alignment:.top){
                Color("bgBlueColor")
                VStack {
                    
                    Image("ic_splash_logo")
                        .aspectRatio(contentMode: .fit)
                        .resizable()
                    VStack(){
                        /*Image("bg_rounded_white")
                            .overlay(TitleView(),alignment:.top)
                            .overlay(TextView(),alignment: .center)
                            .shadow(color: .gray, radius: 1)
                            .padding(.top, 1.0)
                            .overlay(GetStartedButton(),alignment:.bottom)
                            .frame(height:0)*/
                    }.background(Image("bg_rounded_white").resizable().edgesIgnoringSafeArea(.all).frame(height:250))
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
