//
//  SettingsView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 29.07.2022.
//

import SwiftUI
import SwiftUICharts



struct SettingsView: View {
    var body: some View {
        VStack{
            BarChartView(data: ChartData(points: [8,23,54,32,12,37,7,23,43]), title: "Title", style: Styles.barChartStyleOrangeLight)
             }
             }
    
  
        }
    




struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

