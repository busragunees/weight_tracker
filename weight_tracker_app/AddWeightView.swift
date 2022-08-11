//
//  AddWeightView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 10.08.2022.
//

import SwiftUI

struct AddWeightView: View {
    var body: some View {
        VStack{
            VStack {
                ZStack{
                    Text("Enter Weight")
                        .font(AppFont.font(type: .SemiBold, size: 33))
                        .frame(width: 231, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .padding(.top,25)
                        
                    Image("Enter-Weight-Circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,50)
                        .padding(.leading,40)
                        .padding(.trailing,40)
                }
                Button(action: {}){
                    Text("Save")
                        .frame(width: 330 , height: 63, alignment: .center)
                        .foregroundColor(.black)
                        .font(AppFont.font(type: .SemiBold, size: 19))
                        .background(Color.white)
                        .cornerRadius(18)
                } .padding(.top,50)
            }
            Spacer()
        }.background(AppColor.getColor(type: .purpleColor)).ignoresSafeArea(.all,edges: .bottom)
        
        
        
        
        

    }
    
    struct AddWeightView_Previews: PreviewProvider {
        static var previews: some View {
            AddWeightView()
        }
    }
}
