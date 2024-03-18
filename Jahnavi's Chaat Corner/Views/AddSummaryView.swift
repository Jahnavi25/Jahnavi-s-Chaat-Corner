////
////  AddSummaryView.swift
////  Jahnavi's Chat Corner
////
////  Created by sowmya adavelli on 3/17/24.
////
//
//import SwiftUI
//
//struct AddSummaryView: View {
//    
//    @State var tfSsummary: String = ""
//    
//    @ObservedObject var ut: Utility
//    
//    var body: some View {
//        VStack(spacing: 30){
//            VStack{
//                Text("Summary:")
//                    .font(.system(size: 22))
//                    .bold()
//                    .kerning(2)
//                
//                TextField("Enter the summary",text: $tfSsummary)
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(5))
//                    .frame(width: 300)
//                
//            }
//            Spacer()
//            
//            Button{
//                saveSource()
//            }label:{
//                Text("Save")
//                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
//                    .padding()
//                    .frame(maxWidth:300)
//                    .foregroundColor(.white)
//                    .bold()
//                    .background(Color.black.cornerRadius(10))
//            }
//        }
//        .navigationTitle("Add New Source")
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//    
//    func saveSource() {
//        
//        let newSummary = InformationModel(title: "", amount: 0, summary: tfSsummary)
//        
//        ut.addNewSummary(new: newSummary)
//    }
//    
//}
//
//
//
//struct AddSummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        let utility1 = Utility(id:1, title:"Income", amount: 0, summary: "", sList:Utility1 , url:urlIncome)
//        
//        AddSummaryView(ut:utility1)
//    }
//}



//import SwiftUI
//
//struct AddSummaryView: View {
//    
//    @State var tfSummary: String = ""
//    
//    @ObservedObject var ut: Utility
//    
//    var body: some View {
//        VStack(spacing: 30) {
//            VStack {
//                Text("Summary:")
//                    .font(.system(size: 22))
//                    .bold()
//                    .kerning(2)
//                
//                TextField("Enter the summary", text: $tfSummary)
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(5))
//                    .frame(width: 300)
//                
//            }
//            Spacer()
//            
//            Button(action: saveSummary) {
//                Text("Save")
//                    .textCase(.uppercase)
//                    .padding()
//                    .frame(maxWidth: 300)
//                    .foregroundColor(.white)
//                    .bold()
//                    .background(Color.black.cornerRadius(10))
//            }
//        }
//        .navigationTitle("Add New Summary")
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//    
//    func saveSummary() {
//        ut.summary = tfSummary
//        // Here you should save the summary to your data store if necessary
//    }
//}
//
//struct AddSummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: Utility1, url: urlIncome)
//        return AddSummaryView(ut: utility1)
//    }
//}


//import SwiftUI
//
//struct AddSummaryView: View {
//    
//    @State var tfSummary: String
//    @ObservedObject var ut: Utility
//    
//    init(ut: Utility) {
//        self._tfSummary = State(initialValue: ut.summary)
//        self.ut = ut
//    }
//    
//    var body: some View {
//        VStack(spacing: 30) {
//            VStack {
//                Text("Summary:")
//                    .font(.system(size: 22))
//                    .bold()
//                    .kerning(2)
//                
//                TextField("Enter the summary", text: $tfSummary)
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(5))
//                    .frame(width: 300)
//                
//            }
//            Spacer()
//            
//            Button(action: saveSummary) {
//                Text("Save")
//                    .textCase(.uppercase)
//                    .padding()
//                    .frame(maxWidth: 300)
//                    .foregroundColor(.white)
//                    .bold()
//                    .background(Color.black.cornerRadius(10))
//            }
//        }
//        
//    }
//        .navigationTitle("Add New Summary")
//        .onAppear {
//            tfSummary = ut.summary
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//    
//    func saveSummary() {
//        ut.summary = tfSummary
//        // Here you should save the summary to your data store if necessary
//    }
//}
//
//struct AddSummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: Utility1, url: urlIncome)
//        return AddSummaryView(ut: utility1)
//    }
//}

//
//  AddSourceView.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/16/24.
//

//import SwiftUI
//
//struct AddSummaryView: View {
//    
//    @State var tfSsummary: String = ""
//    
//    @ObservedObject var ut: Utility
//    
//    var body: some View {
//        VStack(spacing: 30){
//            
//            
//            VStack{
//                Text("Summary:")
//                    .font(.system(size: 22))
//                    .bold()
//                    .kerning(2)
//                
//                TextField("Enter the summary",text: $tfSsummary)
//                    .padding()
//                    .background(Color.gray.opacity(0.3).cornerRadius(5))
//                    .frame(width: 300)
//                
//            }
//            Spacer()
//            
//            Button{
//                saveSource()
//            }label:{
//                Text("Save")
//                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
//                    .padding()
//                    .frame(maxWidth:300)
//                    .foregroundColor(.white)
//                    .bold()
//                    .background(Color.black.cornerRadius(10))
//            }
//        }
//    
//        .navigationTitle("Modify Summary")
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        
//    }
//    
//
//    
//    func saveSource() {
//            let newSource = InformationModel(title: "", amount: 0, summary: tfSsummary)
//            // Add new source to utility
//            ut.addNewUtility(new: newSource)
//        
//    
//    }
//
//}
//
//
//struct AddSummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        let utility1 = Utility(id:1, title:"Income", amount: 0, summary: "lll", sList:Utility1 , url:urlIncome)
//        
//        AddSummaryView(ut:utility1)
//    }
//}


//import SwiftUI
//
//struct AddSummaryView: View {
//    @State private var title: String = ""
//    @State private var amount: String = ""
//    @State private var summary: String = ""
//    
//    @ObservedObject var ut: Utility
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Modify Summary")
//                .font(.headline)
//                .padding()
//
//            TextField("Title", text: $title)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//
//            TextField("Amount", text: $amount)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .keyboardType(.decimalPad)
//                .padding()
//
//            TextField("Summary", text: $summary)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//
//            Button(action: saveSource) {
//                Text("Save")
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            .padding()
//        }
//        .navigationTitle("")
//        .padding()
//    }
//
//    func saveSource() {
//        if let amountDouble = Double(amount) {
//            let newSource = InformationModel(title: title, amount: amountDouble, summary: summary)
//            ut.addNewUtility(new: newSource)
//        } else {
//            print("Amount entered is not a valid number.")
//        }
//    }
//}
//
//// Assuming InformationModel and Utility are defined in your project
//// Assuming addNewUtility(new:) is a function within your Utility class that adds a new InformationModel instance
//
//struct AddSummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Ensure Utility1 and urlIncome are correctly defined in your project
//        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: [], url:urlIncome)
//        return AddSummaryView(ut: utility1)
//    }
//}


import SwiftUI

struct AddSummaryView: View {
    @State private var title: String
    @State private var amount: String
    @State private var summary: String
    
    @ObservedObject var ut: Utility
    
    init(ut: Utility) {
        self.ut = ut
        // Initialize the state with existing data
        _title = State(initialValue: ut.title)
        _amount = State(initialValue: String(ut.amount))
        _summary = State(initialValue: ut.summary)
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Title", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Summary", text: $summary)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: saveSource) {
                    Text("Save")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Modify Summary")
            .padding()
        }
    }

    func saveSource() {
        if let amountDouble = Double(amount) {
            // Update the existing Utility object with new values
            ut.title = title
            ut.amount = amountDouble
            ut.summary = summary
            // Optionally, save these changes to your data store or perform additional actions as needed
        } else {
            print("Amount entered is not a valid number.")
        }
    }
}

struct AddSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        let utility1 = Utility(id: 1, title: "Income", amount: 20000, summary: "The income gained by selling food.", sList: [], url:urlIncome)
        return AddSummaryView(ut: utility1)
    }
}
