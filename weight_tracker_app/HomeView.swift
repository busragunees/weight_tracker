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
                    Label("Analysis", image: "AnalysisIcon")
                }
            CalendarView()
                .tabItem(){
                    Label("Calendar", image: "CalendarIcon")
                }
           
            ProfileView()
                .tabItem(){
                    Label("Profile", image: "ProfileIcon")
                }
            SettingsView()
                .tabItem(){
                    Label("Settings", image: "SettingsIcon").font(.system(size: 70))
                }
        }
           
            
        
        
        
        
        
        
   

    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
