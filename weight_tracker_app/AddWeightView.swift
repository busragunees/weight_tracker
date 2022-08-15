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
            ZStack{
                Image("Enter-Weight-Circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,50)
                    .padding(.leading,40)
                .padding(.trailing,40)
                WeightPicker()
            }
            SaveButton()
            Spacer()
        }.background(AppColor.getColor(type: .purpleColor)).ignoresSafeArea(.all,edges: .bottom)
    }
    
    struct AddWeightView_Previews: PreviewProvider {
        static var previews: some View {
            AddWeightView()
        }
    }
}




struct SaveButton: View {
    var body: some View {
        Button(action: {}){
            Text("Save")
                .frame(width: 330 , height: 63, alignment: .center)
                .foregroundColor(.black)
                .font(AppFont.font(type: .SemiBold, size: 19))
                .background(Color.white)
                .cornerRadius(18)
        } .padding(.top,50)
    }
}



struct WeightPicker: View {
    @State private var number = Int()
    @State var selectedKg = 65
    @State var selectedGr = 0
    var data = Array(0...250).map { "\($0)" }
    var body: some View {
     
            VStack{
              /*  Text("Enter Weight")
                    .font(AppFont.font(type: .SemiBold, size: 33))
                    .frame(width: 231, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .padding(.top,25)*/
                HStack{
                    
                    ZStack {
                        Picker("", selection: $selectedKg) {
                            ForEach(0 ..< data.count) {
                                Text(data[$0]).foregroundColor(.white).font(AppFont.font(type: .SemiBold, size: 30))
                                Spacer()
                            }
                        }.frame(width: 60)
                            .pickerStyle(.wheel)
                            .introspectUIPickerView { picker in
                                picker.subviews[1].backgroundColor = UIColor.clear
                                
                            }
                        
                    }
                    Text(",").foregroundColor(.white).font(AppFont.font(type: .Bold, size: 30))
                    ZStack {
                        Picker("", selection: $selectedGr) {
                            ForEach(0 ..< data.count) {
                                Text(data[$0]).foregroundColor(.white).font(AppFont.font(type: .SemiBold, size: 30))
                                Spacer()
                            }
                        }
                        .pickerStyle(.wheel)
                        .introspectUIPickerView { picker in
                            picker.subviews[1].backgroundColor = UIColor.clear
                        }.frame(width: 60)
                        
                    }
                }
            }
        }
    }

