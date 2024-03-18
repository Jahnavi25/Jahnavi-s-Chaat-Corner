//
//  UtilitiesModel.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/14/24.
//

import Foundation

class Utility: Identifiable, ObservableObject{
    var id: String = UUID().uuidString
    
    var utilityNum: Int
    var title: String
    var amount: Double
    var summary: String
    
    @Published var  sourceList: [InformationModel]
    var urlFirstScreen: String
    
    init(id: Int, title: String, amount: Int,summary: String, sList: [InformationModel], url:String){
        utilityNum = id
        self.title = title
        self.amount = Double(amount)
        self.summary = summary
        sourceList = sList
        urlFirstScreen = url
    }
    
    func addNewUtility(new: InformationModel){
        sourceList.append(new)
    }
    
    func addNewSummary(new: InformationModel){
        sourceList.append(new)
    }
    
}
