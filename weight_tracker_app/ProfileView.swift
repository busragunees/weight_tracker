//
//  ProfileView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 29.07.2022.
//

import SwiftUI
import SwiftUICharts

struct ProfileView: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    CardView(){
                        Text("How Do \n\(Text("You Feel ?").foregroundColor(.black))")
                            //.padding(70)
                    }
                }.padding(.top,70)
                    .frame(width: 370,height: 121)
                    .navigationTitle("Profile")
                    .foregroundColor(AppColor.getColor(type: .DarkGray))
                    .font(AppFont.font(type: .Bold, size: 15))
                VStack{
                    CardView(){
                     Text("Age:")
                            .padding(.trailing,250)
                        
                    }
                    CardView(){
                        Text("Tall:")
                            .padding(.trailing,250)
                        
                    }
                    CardView(){
                        Text("Weight:")
                            .padding(.trailing,230)
                        
                    }
                    CardView(){
                        Text("Body Mass Index (BMI) :")
                            .padding(.trailing,100)
                        
                    }
                }.padding(.top,70)
                .frame(width: 350,height: 300)
                .navigationTitle("Profile")
                .foregroundColor(AppColor.getColor(type: .DarkGray))
                .font(AppFont.font(type: .Bold, size: 15))
            }
        }
    }
    
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

