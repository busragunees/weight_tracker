//
//  AnalysisView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 29.07.2022.
//

import SwiftUI
import SwiftUICharts

struct WeightRow:View{
    var weightItem:WeightItem
    var body: some View{
        CardView{
            HStack{
                Text(String(weightItem.weight))
                    .font(AppFont.font(type: .Medium, size: 15))
                    .foregroundColor(AppColor.getColor(type:.CardTitleColor))
                    .padding(.leading,35)
                    Spacer()
                Image("LoseWeightIcon")
                    .resizable()
                    .frame(width: 12,height: 9)
                    .padding(.leading,13)
                
                Text(String(weightItem.weightDiff))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(AppFont.font(type: .LightItalic, size: 10))
                    .foregroundColor(AppColor.getColor(type:.CardTitleColor))
                    .padding(.leading,10)
                    Spacer()
                
                Text(weightItem.date)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(AppFont.font(type: .SemiBold, size: 12))
                    .foregroundColor(AppColor.getColor(type:.CardTitleColor))
                    .padding(.leading,30)
                    Spacer()
                
            }.frame(maxWidth:.infinity,maxHeight: 200)
                 .background(Color.white)
                 .frame(height: 50)
        }
  
      
    }
}

struct AnalysisView: View {
    @State var weightList:[WeightItem] = [WeightItem( weight: 80, date: "09.08.2022", weightDiff: 300.0, isWeightLose: true),WeightItem(weight: 79.8, date: "09.08.2022", weightDiff: 200.0, isWeightLose: true)]


    @State var data4: [Double] = [60.0]
    let multiStyle = ChartStyle(backgroundColor: Color.white.opacity(0.0),
                                foregroundColor:
                                    [ColorGradient(AppColor.getColor(type: .purpleColor), AppColor.getColor(type: .purpleColor))])
    
    init() {
        UITableView.appearance().backgroundColor = .white
       UITableView.appearance().separatorStyle = .none
        
    }
    
    
    

    var body: some View {
        
        NavigationView {
            ZStack(alignment: .top){
                Color(.white)
                    .ignoresSafeArea()
                VStack {
                   
                    CardView() {
                        ChartLabel("Goal Progress", type: .legend)
                            .padding(.top, 20)
                            .padding(.leading)
                            .frame(height: 20)
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Circle().frame(width: 10)
                                        .padding(.leading)
                                        .foregroundColor(AppColor.getColor(type: .BeginningColor))
                                    
                                    Text("Beginning: 75.0")
                                        .frame(alignment: .leading)
                                        .font(AppFont.font(type: .ExtraLight, size: 12))
                                    
                                }
                                
                                HStack {
                                    Circle().frame(width: 10)
                                        .padding(.leading)
                                        .foregroundColor(AppColor.getColor(type: .CurrentColor))
                                    
                                    Text("Current: 75.0")
                                        .frame(alignment: .leading)
                                        .font(AppFont.font(type: .ExtraLight, size: 12))
                                    
                                }
                                HStack {
                                    Circle().frame(width: 10)
                                        .padding(.leading)
                                        .foregroundColor(AppColor.getColor(type: .TargetColor))
                                    
                                    Text("Target: 75.0")
                                        .frame(alignment: .leading)
                                        .font(AppFont.font(type: .ExtraLight, size: 12))
                                    
                                }
                            }
                            VStack {
                                ZStack {
                                    RingsChart()
                                        .padding(0.1)
                                    Text("%80")
                                    
                                }
                                Spacer()
                                HStack {
                                    
                                    Circle().frame(width: 10)
                                        .foregroundColor(AppColor.getColor(type: .RemainingColor))
                                    
                                    Text("Remaining: 75.0")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(AppFont.font(type: .ExtraLight, size: 12))
                                    
                                    Spacer()
                                    
                                    Circle().frame(width: 10)
                                        .foregroundColor(AppColor.getColor(type: .purpleColor))
                                    
                                    Text("Dropped: 75.0")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(AppFont.font(type: .ExtraLight, size: 12))
                                    
                                    
                                }.padding(.bottom, 10)
                                    .padding(.top, 8)
                                
                            }
                        }
                        
                        
                    }
                    .data(self.data4)
                    .chartStyle(multiStyle)
                    .frame(height: 200)
                    .padding(10)
                    Spacer()
                        .navigationTitle("Analysis")
                    
                    List(){
                        Section(header: Text("Today").font(AppFont.font(type: .SemiBold, size: 15))
                            .foregroundColor(AppColor.getColor(type: .CardTitleColor))){
                               
                                ForEach(weightList,id: \.self){
                                weightItem in WeightRow(weightItem:weightItem)
                            }
                            .listRowBackground(Color.clear)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 20))
                        }
                    }.background(Color.white.ignoresSafeArea())
                    .listStyle(GroupedListStyle())
                        .headerProminence(.increased)
                        .scrollContentBackground(.hidden)
                       
                    

                }
            }
        }
        
    }
}


struct AnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisView()
    }
}


/*60 - 50 = 10 bu yuz de yuz
 10/100 = 0,1
 current kilo * 0,1 = yuzdemiz
 57 * 0,1 = 5.7*10
 */
