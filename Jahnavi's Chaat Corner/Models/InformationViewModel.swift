//
//  InformationViewModel.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/14/24.
//

import Foundation

//All the income sources and their respective information
var Utility1: [InformationModel] = [
    InformationModel(title: "Food Sales", amount: 20000, summary: "The income gained by selling food."),
    
    InformationModel(title: "Beverage Sales", amount: 5000, summary: "The income gained by selling drinks."),
    
    InformationModel(title: "Delivery Charges", amount: 1000, summary: "The income gained through delivery."),
    
    InformationModel(title: "Events", amount: 10000, summary: "The total income earned through events and catering."),
    
    InformationModel(title: "Miscellaneous", amount: 500, summary: "The total of tips and reservations")
]

var urlIncome = "https://cdn-icons-png.freepik.com/512/3303/3303251.png"



// All the expense sources and their respective information
var Utility2: [InformationModel] = [
    InformationModel(title: "Rent", amount: 1000, summary: "The rent of the restaurant."),
    
    InformationModel(title: "Payroll", amount: 5000, summary: "The total payroll of employees."),
    
    InformationModel(title: "Food Costs", amount: 3000, summary: "The money spent on groceries."),
    
    InformationModel(title: "Utilities", amount: 300, summary: "The total utilities incurred every month."),
    
    InformationModel(title: "Miscellaneous", amount: 300, summary: "The total cost of bags, cultery, bowls, plates, etc.")
]

var urlExpenses = "https://static.vecteezy.com/system/resources/previews/001/822/354/original/a-cartoon-showing-bill-payment-free-vector.jpg"


//All the items present in menu and their respective information
var Utility3: [InformationModel] = [
    InformationModel(title: "Pani puri", amount: 10, summary: "Crispy wheat cups filled with spicy potato stuffing and mint water."),
    
    InformationModel(title: "Aloo chaat", amount: 15, summary: "Crispy potato patty along with pea curry and yogurt."),
    
    InformationModel(title: "Dahi puri", amount: 15, summary: "Crispy wheat cups filled with sweetened yogurt and tamarind sauce."),
    
    InformationModel(title: "Masala puri", amount: 15, summary: "Crispy wheat cups filled with potato stuffing, lemon juice and spices ."),
    
    InformationModel(title: "Beverages", amount: 5, summary: "Mint water/Lassi/Coca-cola")
]

var urlMenu = "https://cdn-icons-png.flaticon.com/512/1147/1147930.png"
