//
//  AnalysisView.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 29.07.2022.
//

import SwiftUI
import SwiftUICharts

struct AnalysisView: View {
    @State var data4: [Double] = [60.0]
    let multiStyle = ChartStyle(backgroundColor: Color.white.opacity(0.0),
    foregroundColor:
                                    [ColorGradient(AppColor.getColor(type: .DroppedColor), AppColor.getColor(type: .DroppedColor))])
    
    var body: some View {
   
        NavigationView{
            VStack{
                CardView(){
                    ChartLabel("Goal Progress",type:.legend)
                        .padding(.top,20)
                        .padding(.leading)
                        .frame(height:20)
                        .foregroundColor(AppColor.getColor(type:.ChartTitle))
                    HStack{
                        VStack(alignment: .leading){
                           HStack{
                                Circle().frame(width:10)
                                    .padding(.leading)
                                    .foregroundColor(AppColor.getColor(type: .BeginningtColor))
                          
                                Text("Current: 75.0")
                                    .frame(alignment: .leading)
                                .font(AppFont.font(type: .ExtraLight, size:12))
                             
                                
                            }
                          
                            HStack{
                                Circle().frame(width:10)
                                    .padding(.leading)
                                    .foregroundColor(AppColor.getColor(type: .CurrentColor))
                        
                                Text("Current: 75.0")
                                    .frame(alignment: .leading)
                                    .font(AppFont.font(type: .ExtraLight, size:12))
                                
                            }
                            HStack{
                                Circle().frame(width:10)
                                    .padding(.leading)
                                    .foregroundColor(AppColor.getColor(type:.TargetColor))
                              
                                Text("Target: 75.0")
                                    .frame( alignment: .leading)
                                    .font(AppFont.font(type: .ExtraLight, size:12))
                                   
                                  
                            }
                     
                        }
                        
                        
                     
                        VStack{
                            ZStack{
                                RingsChart()
                                    .padding(0.1)
                                Text("%80")
                        
                            }
                            Spacer()
                            HStack{
                                
                                Circle().frame(width:10)
                                    .foregroundColor(AppColor.getColor(type:.RemainingColor))
                             
                                Text("Remaining: 75.0")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(AppFont.font(type: .ExtraLight, size:12))
                           
                            
                                
                                
                                
                                Circle().frame(width:10)
                                 
                                    .foregroundColor(AppColor.getColor(type:.DroppedColor))
                               
                                Text("Dropped: 75.0")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(AppFont.font(type: .ExtraLight, size:12))
                                   
                                  
                            }.padding(.bottom,10)
                                .padding(.top,8)
                        }
                        
                   
                    }
                 
                }
                .data(self.data4)
                .chartStyle(multiStyle)
                .frame(width:.infinity, height: 200)
                .padding(10)
                Spacer()
                    .navigationTitle("Analysis")
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
