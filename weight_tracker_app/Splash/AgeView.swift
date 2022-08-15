//
//  NextView2.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 12.08.2022.
//

import SwiftUI
import Introspect

struct AgeView: View {
    @State private var number = Int()
    @State var selectedPage = 18
    var data = Array(0...100).map { "\($0)" }
    
    var body: some View {
        VStack{
            Spacer()
            Text("Age").font(AppFont.font(type:.Bold, size: 30)).foregroundColor(AppColor.getColor(type: .DarkGray)).padding(.bottom,80)
            Text("How old are you ?").font(AppFont.font(type: .Light, size: 25)).foregroundColor(AppColor.getColor(type: .CardTitleColor))
           Spacer()
            ZStack {
                Ellipse()
                    .frame(width:UIScreen.main.bounds.size.width,height: 260)
                    .foregroundColor(AppColor.getColor(type: .LightPurple).opacity(0.1))
                    .padding()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 60)
                    .foregroundColor(AppColor.getColor(type:.LightPurple)).padding(10)
                
                Picker("", selection: $selectedPage) {
                    ForEach(0 ..< data.count) {
                        Text(data[$0]).font(AppFont.font(type: .SemiBold, size: 30))
                        Spacer()
                    }
                }
                .pickerStyle(.wheel)
                .labelsHidden()
                .clipped().introspectUIPickerView { picker in
                    picker.subviews[1].backgroundColor = UIColor.clear
                    
                }.compositingGroup()
                    .onAppear()
                    .frame(width: 60)
                    .introspectUIPickerView { picker in
                        picker.subviews[1].backgroundColor = UIColor.clear
                    }
            }
            
            .frame(width: 60)
            .introspectUIPickerView { picker in
                picker.subviews[1].backgroundColor = UIColor.clear
            }
            Spacer()
        }
    }
}

struct NextView2_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
