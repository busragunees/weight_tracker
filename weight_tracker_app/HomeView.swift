//
//  HomeView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 16.07.2022.
//


import SwiftUI


struct HomeView: View {
    var body: some View{
        
        TabView{
            AnalysisView()
                .tabItem(){
                    Label("Analysis", systemImage: "chart.bar.xaxis")
                }
            CalendarView()
                .tabItem(){
                    Label("Calendar", systemImage: "calendar")
                }
           
            ProfileView()
                .tabItem(){
                    Label("Profile", systemImage: "person")
                }
            SettingsView()
                .tabItem(){
                    Label("Settings", systemImage: "gearshape")
                        
                }
        }.accentColor(AppColor.getColor(type: .purpleColor))
           
            
        
        
        
        
        
        
   

    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
