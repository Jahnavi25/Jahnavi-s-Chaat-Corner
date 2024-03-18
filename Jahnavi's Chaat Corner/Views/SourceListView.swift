////
////  SourceListView.swift
////  Jahnavi's Chat Corner
////
////  Created by Bombothula, Jahnavi on 3/15/24.
////
//
////import SwiftUI
////
////struct SourceListView: View {
////    
////    @ObservedObject var ut: Utility
////    
////    
////    var body: some View {
////        List{
////            ForEach(ut.sourceList){ s in
////                VStack{
////                    UtilityView(title: s.title, amount: Double(s.amount))
////                    
////                }
////            }
////        }
////        .listStyle(PlainListStyle())
////        .frame(maxWidth: .infinity)
////        .navigationTitle("\(ut.title)")
////        .navigationBarItems(
////            trailing: NavigationLink("Add", destination: AddSourceView(ut:ut))
////        )
////        
////        var ut: Utility
////        
////        
////        HStack{
////            Text(ut.title)
////                .bold()
////                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
////                .font(.system(size: 20))
////                .kerning(3)
////            
////            NavigationLink(destination: SourceListView(ut: ut)){
////                Image(systemName: "arrow.right")
////                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
////            }
////        }
////    }
////    
////    
////    struct SourceListView_Previews: PreviewProvider {
////        static var previews: some View {
////            let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "", sList: Utility1, url: urlIncome)
////            
////            SourceListView(ut: utility1)
////        }
////    }
////}
//
//import SwiftUI
//
//struct SourceListView: View {
//    
//    @ObservedObject var ut: Utility
//    
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(ut.sourceList) { s in
//                    NavigationLink(destination: AddSummaryView(ut: ut)) {
//                        VStack {
//                            UtilityView(title: s.title, amount: Double(s.amount))
//                        }
//                    }
//                }
//            }
//            .listStyle(PlainListStyle())
//            .frame(maxWidth: .infinity)
//            .navigationTitle("\(ut.title)")
//            .navigationBarItems(
//                trailing: NavigationLink(destination: AddSourceView(ut: ut)) {
//                    Text("Add")
//                }
//            )
//        }
//    }
//}
//
//struct SourceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: Utility1, url: urlIncome)
//        return SourceListView(ut: utility1)
//    }
//}


//import SwiftUI
//
//struct SourceListView: View {
//    
//    @ObservedObject var ut: Utility
//    
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(ut.sourceList) { s in
//                    NavigationLink(destination: AddSummaryView(ut: ut)) {
//                        VStack {
//                            UtilityView(title: s.title, amount: Double(s.amount))
//                        }
//                    }
//                }
//            }
//            .listStyle(PlainListStyle())
//            .frame(maxWidth: .infinity)
//            .navigationTitle("\(ut.title)")
//            .navigationBarItems(
//                trailing: NavigationLink(destination: AddSourceView(ut: ut)) {
//                    Text("Add")
//                }
//            )
//        }
//        .navigationViewStyle(StackNavigationViewStyle()) // Added navigationViewStyle
//    }
//}
//
//struct SourceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: Utility1, url: urlIncome)
//        return SourceListView(ut: utility1)
//    }
//}


//import SwiftUI
//
//struct SourceListView: View {
//    
//    @ObservedObject var ut: Utility
//    
//    var totalAmount: Double {
//        ut.sourceList.reduce(0) { $0 + Double($1.amount) }
//    }
//    
//    var roundedTotalAmount: String {
//        String(format: "%.2f", totalAmount)
//    }
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                List {
//                    ForEach(ut.sourceList) { s in
//                        NavigationLink(destination: AddSummaryView(ut: ut)) {
//                            VStack {
//                                UtilityView(title: s.title, amount: Double(s.amount))
//                            }
//                        }
//                    }
//                }
//                .listStyle(PlainListStyle())
//                .frame(maxWidth: .infinity)
//                .navigationTitle("\(ut.title)")
//                
//                HStack {
//                    Spacer()
//                    Text("Total: $\(roundedTotalAmount)") // Including dollar symbol
//                        .font(.headline)
//                        .foregroundColor(.primary)
//                    Spacer()
//                }
//                .padding()
//                
//                NavigationLink(destination: AddSourceView(ut: ut)) {
//                    Text("Add New")
//                }
//                .padding()
//            }
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
//    }
//}
//
//struct SourceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: Utility1, url: urlIncome)
//        return SourceListView(ut: utility1)
//    }
//}
//


import SwiftUI

struct SourceListView: View {
    
    @ObservedObject var ut: Utility
    
    var totalAmount: Double {
        ut.sourceList.reduce(0) { $0 + $1.amount }
    }
    
    var roundedTotalAmount: String {
        String(format: "%.2f", totalAmount)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(ut.sourceList) { s in
                        NavigationLink(destination: AddSummaryView(ut: ut)) {
                            VStack {
                                UtilityView(title: s.title, amount: s.amount)
                            }
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                .frame(maxWidth: .infinity)
                .navigationTitle("\(ut.title)")
                .navigationBarItems(trailing: EditButton())
                
                HStack {
                    Spacer()
                    Text("Total: $\(roundedTotalAmount)") // Including dollar symbol
                        .font(.headline)
                        .foregroundColor(.primary)
                    Spacer()
                }
                .padding()
                
                NavigationLink(destination: AddSourceView(ut: ut)) {
                    Text("Add New")
                }
                .padding()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func deleteItems(at offsets: IndexSet) {
        ut.sourceList.remove(atOffsets: offsets)
    }
}

struct SourceListView_Previews: PreviewProvider {
    static var previews: some View {
        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: [], url:urlIncome)
        return SourceListView(ut: utility1)
    }
}
