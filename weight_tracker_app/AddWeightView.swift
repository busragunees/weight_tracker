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
                Text("Enter Weight")
                    .font(AppFont.font(type: .SemiBold, size: 33))
                    .foregroundColor(.black)
                    .padding()
                Image("Enter-Weight-Circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            .frame(height: UIScreen.main.bounds.height/1.8)
            .background(AppColor.getColor(type: .purpleColor))
            Spacer()
        }.background(Color.white).ignoresSafeArea(.all,edges: .bottom)
        
        
        
        
        
        //Custom number pad
        GeometryReader{reader in
            VStack{
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 3),spacing: 15){
                    ForEach(rows,id: \.self){value in
                        Button(action: {}){
                            
                        }
                    }
                }
            }
            
        }
    }
    
    
    //Number Data...
    var rows = ["1","2","3","3","4","5","6","7","8","9","0","delete.left"]
    
    
    
    
    
    
    
    struct AddWeightView_Previews: PreviewProvider {
        static var previews: some View {
            AddWeightView()
        }
    }
}
