////
////  HomepageView.swift
////  Jahnavi's Chat Corner
////
////  Created by Bombothula, Jahnavi on 3/16/24.
////
//
//import SwiftUI
//
//struct HomepageView: View {
//    
//    @StateObject var utility1 = Utility(id:1, title:"Income", amount: 0, summary: "", sList:Utility1 , url:urlIncome)
//    
//    @StateObject var utility2 = Utility(id:2, title:"Expenses", amount: 0, summary: "", sList:Utility2 , url:urlExpenses)
//    
//    @StateObject var utility3 = Utility(id:3, title:"Menu", amount: 0, summary: "", sList:Utility3 , url:urlMenu)
//    
//    
//    var body: some View {
//        VStack{
//            
//            FirstScreenTitle()
//            
//            ScrollView{
//                VStack(spacing: 20) { // Add spacing between views
//                    FirstScreenElementView(ut: utility1)
//                    FirstScreenElementView(ut: utility2)
//                    FirstScreenElementView(ut: utility3)
//                }
//            }
//        }
//        .navigationTitle("Homepage")
//        
//    }
//    
//}
//
//
//#Preview {
//    HomepageView()
//}
//
//struct FirstScreenTitle: View {
//    var body: some View {
//        VStack{
//            Text("Jahnavi's Chat Corner")
//                .bold()
//                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
//                .font(.system(size: 22))
//                .kerning(3)
//            
//        }
//        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//        .background(
//            Color.cyan,
//            ignoresSafeAreaEdges: .horizontal
//        )
//        .padding(.vertical)
//    }
//}


//import SwiftUI
//
//struct HomepageView: View {
//    
//    @StateObject var utility1 = Utility(id: 1, title: "Income", amount: 0, summary: "", sList: Utility1, url: urlIncome)
//    
//    @StateObject var utility2 = Utility(id: 2, title: "Expenses", amount: 0, summary: "", sList: Utility2, url: urlExpenses)
//    
//    @StateObject var utility3 = Utility(id: 3, title: "Menu", amount: 0, summary: "", sList: Utility3, url: urlMenu)
//    
//    var totalIncome: Double {
//        utility1.amount
//    }
//    
//    var totalExpenses: Double {
//        utility2.amount
//    }
//    
//    var profitLossPercentage: Double {
//        let netProfitLoss = totalIncome - totalExpenses
//        let percentage = (netProfitLoss / totalIncome) * 100
//        return percentage
//    }
//    
//    var body: some View {
//        VStack {
//            FirstScreenTitle()
//            
//            ScrollView {
//                VStack(spacing: 20) { // Add spacing between views
//                    FirstScreenElementView(ut: utility1)
//                    FirstScreenElementView(ut: utility2)
//                    FirstScreenElementView(ut: utility3)
//                }
//            }
//            
//            Text("Profit/Loss: \(profitLossPercentage, specifier: "%.2f")%")
//                .foregroundColor(profitLossPercentage >= 0 ? .green : .red)
//                .padding()
//        }
//        .navigationTitle("Homepage")
//    }
//}
//
//#Preview {
//    HomepageView()
//}
//struct FirstScreenTitle: View {
//    var body: some View {
//        VStack{
//            Text("Jahnavi's Chat Corner")
//                .bold()
//                .textCase(.uppercase)
//                .font(.system(size: 22))
//                .kerning(3)
//        }
//        .frame(maxWidth: .infinity)
//        .background(Color.cyan, ignoresSafeAreaEdges: .horizontal)
//        .padding(.vertical)
//    }
//}

import SwiftUI

struct HomepageView: View {
    
    @StateObject var utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "", sList: Utility1, url: urlIncome)
    
    @StateObject var utility2 = Utility(id: 2, title: "Expenses", amount: 10000, summary: "", sList: Utility2, url: urlExpenses)
    
    @StateObject var utility3 = Utility(id: 3, title: "Menu", amount: 0, summary: "", sList: Utility3, url: urlMenu)
    
    var totalIncome: Double {
        utility1.amount
    }
    
    var totalExpenses: Double {
        utility2.amount
    }
    
    var profitLossPercentage: Double {
        let netProfitLoss = totalIncome - totalExpenses
        let percentage = (netProfitLoss / totalIncome) * 100
        return percentage
    }
    
    var body: some View {
        VStack {
            // Display profit or loss text based on profitLossPercentage
            if profitLossPercentage >= 0 {
                Text("Profit: \(profitLossPercentage, specifier: "%.2f")%")
                    .foregroundColor(.green)
                    .padding(.top)
            } else {
                Text("Loss: \(profitLossPercentage, specifier: "%.2f")%")
                    .foregroundColor(.red)
                    .padding(.top)
            }
            
            FirstScreenTitle()
            
            ScrollView {
                VStack(spacing: 20) { // Add spacing between views
                    FirstScreenElementView(ut: utility1)
                    FirstScreenElementView(ut: utility2)
                    FirstScreenElementView(ut: utility3)
                }
            }
        }
        .navigationTitle("Homepage")
    }

}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}

struct FirstScreenTitle: View {
    var body: some View {
        VStack{
            Text("Jahnavi's Chat Corner")
                .bold()
                .textCase(.uppercase)
                .font(.system(size: 22))
                .kerning(3)
        }
        .frame(maxWidth: .infinity)
        .background(Color.cyan, ignoresSafeAreaEdges: .horizontal)
        .padding(.vertical)
    }
}

