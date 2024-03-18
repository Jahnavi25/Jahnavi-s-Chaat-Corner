//
//  InformationModel.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/14/24.
//

import Foundation

struct InformationModel: Identifiable {
    var id: String = UUID().uuidString
    
    var title: String
    var amount: Double
    var summary: String
}
