//
//  UtilityView.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/15/24.
//

//import SwiftUI
//
//
//
//struct UtilityView: View{
//    
//    var title: String
//    var amount: Double
//    
//    
//    var body: some View {
//        
//        VStack(spacing:20) {
//            HStack(alignment: .firstTextBaseline, spacing: 20) {
//                Text(title)
//                Spacer()
//
//                Text(String(amount))
//                
//                  .padding(.vertical)
////                  .frame(maxWidth: .infinity)
//                  .background(.white)
//                  .bold()
//                  .font(.system(size: 20))
//                  .kerning(2)
//                  .multilineTextAlignment(.center)
//                
//            }
//        }
//    }
//}
//
//
//struct UtilityView_Previews: PreviewProvider {
//    static var previews: some View {
//        UtilityView(title: "Food Sales", amount: 20000)
//    }
//}
//
//

import SwiftUI

struct UtilityView: View {
    
    var title: String
    var amount: Double
    
    var formattedAmount: String {
        String(format: "$%.2f", amount)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .firstTextBaseline, spacing: 20) {
                Text(title)
                Spacer()
                Text(formattedAmount) // Using formattedAmount with dollar symbol
                    .padding(.vertical)
                    .background(Color.white)
                    .bold()
                    .font(.system(size: 20))
                    .kerning(2)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct UtilityView_Previews: PreviewProvider {
    static var previews: some View {
        UtilityView(title: "Food Sales", amount: 20000)
    }
}
