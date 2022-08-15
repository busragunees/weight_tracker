//
//  HomeView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 16.07.2022.
//


import SwiftUI


struct HomeView: View {
    
    init() {
           UITabBar.appearance().backgroundColor = UIColor.white
       }
    
    var body: some View{
        
        TabView{
            AnalysisView()
                .tabItem(){
                    Label("Analysis", systemImage: "chart.bar.xaxis")
                }
          AddWeightView()
                .tabItem(){
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 44,weight: .bold))
                        .foregroundColor(.purple)
                }
            ProfileView()
                .tabItem(){
                    Label("Profile", systemImage: "person")
                }
        }.accentColor(AppColor.getColor(type: .purpleColor))
   

    }
    
    /*Picker("Your age", selection: $number) {
                    ForEach(1...100, id: \.self) { number in
                        Text("\(number)")
                    }
                }.pickerStyle(.wheel)*/
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
