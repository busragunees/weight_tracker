//
//  NextView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 12.08.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Image("ScaleLogo")
                .padding(.bottom,50)
            
            Text("Welcome to \n\(Text("Weight Tracker").foregroundColor(AppColor.getColor(type: .purpleColor)))").font(AppFont.font(type: .SemiBold, size: 30))
                .multilineTextAlignment(.center)
                .padding(.bottom,75)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
             
            Text("Follow your weight in a controlled way, notice the change, \nstay \(Text("healthy and fit.").foregroundColor(AppColor.getColor(type: .purpleColor)).font(AppFont.font(type: .Medium, size: 21)))").font(AppFont.font(type: .ExtraLight, size: 21))
                .multilineTextAlignment(.center)
            Spacer()
           
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
