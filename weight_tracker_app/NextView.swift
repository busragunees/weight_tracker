//
//  NextView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 12.08.2022.
//

import SwiftUI

struct NextView: View {
    var body: some View {
        VStack{
            Image("ScaleLogo")
                .padding(.bottom,62)
            
            Text("Welcome to \n\(Text("Weight Tracker").foregroundColor(AppColor.getColor(type: .purpleColor)))").font(AppFont.font(type: .SemiBold, size: 30))
                .padding(.bottom,75)
            
            Text("Follow your weight in a controlled way, notice the change, stay\n\(Text("healthy and fit.").foregroundColor(AppColor.getColor(type: .purpleColor)).font(AppFont.font(type: .Medium, size: 21)))").font(AppFont.font(type: .ExtraLight, size: 21))
                //.padding(.bottom,150)
            
            Button(action: {}){
            Text("Next")
            .frame(width: 296, height: 55, alignment: .center)
            .background(AppColor.getColor(type: .purpleColor))
            .foregroundColor(Color.white)
            .font(AppFont.font(type:.Bold, size:20))
            .cornerRadius(13)
            .padding(.top,50)
            }
        }
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
