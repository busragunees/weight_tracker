//
//  NextView4.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 12.08.2022.
//

import SwiftUI

struct NextView4: View {
    var body: some View {
        VStack{
            Text("Weight").font(AppFont.font(type:.Bold, size: 30)).foregroundColor(AppColor.getColor(type: .DarkGray))
                .padding(.top)
            
            Text("Select your weight.").font(AppFont.font(type: .Light, size: 25)).foregroundColor(AppColor.getColor(type: .CardTitleColor))
                .padding(.top,40)
            
            Button(action: {}){
            Text("Next")
            .frame(width: 296, height: 55, alignment: .center)
            .background(AppColor.getColor(type: .purpleColor))
            .foregroundColor(Color.white)
            .font(AppFont.font(type:.Bold, size:20))
            .cornerRadius(13)
            .padding(.top,400)
            }
            
        }
    }
}

struct NextView4_Previews: PreviewProvider {
    static var previews: some View {
        NextView4()
    }
}
