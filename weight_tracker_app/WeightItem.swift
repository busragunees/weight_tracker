//
//  WeightItem.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 8.08.2022.
//

import Foundation

struct WeightItem:Hashable{
    var id = UUID()
    
    
var weight:Double
var date:String
var weightDiff:Double

    var isWeightLose:Bool

    init(weight: Double, date: String, weightDiff: Double, isWeightLose: Bool) {
        self.weight = weight
        self.date = date
        self.weightDiff = weightDiff
        self.isWeightLose = isWeightLose
    }
}
