//
//  SplashView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 13.08.2022.
//

import SwiftUI

struct SplashView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = AppColor.getUIColor(type: .purpleColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    
    @State var selectedPage = 0
    
    var body: some View {
        VStack {
            if(selectedPage < 5){
                TabView(selection: $selectedPage){
                    WelcomeView().tag(0)
                    AgeView().tag(1)
                    HeightView().tag(2)
                    CurrentWeightView().tag(3)
                    TargetWeightView().tag(4)
                }.tabViewStyle(PageTabViewStyle())
                Button(action: {selectedPage += 1
                    print("keslan", selectedPage)
                }){
                Text("Next")
                .frame(width: 296, height: 55, alignment: .center)
                .background(AppColor.getColor(type: .purpleColor))
                .foregroundColor(Color.white)
                .font(AppFont.font(type:.Bold, size:20))
                .cornerRadius(13)
                .padding(.bottom,70)
                }
            }else{
                ContentView()
            }
            
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
