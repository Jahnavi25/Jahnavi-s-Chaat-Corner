//
//  AddSourceView.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/16/24.
//

import SwiftUI

struct AddSourceView: View {
    
    @State var tfStitle: String = ""
    @State var tfSamt: String = ""
    @State var tfSsummary: String = ""
    
    @ObservedObject var ut: Utility
    
    var body: some View {
        VStack(spacing: 30){
            
            VStack{
                Text("New Source title:")
                    .font(.system(size: 22))
                    .bold()
                    .kerning(2)
                
                TextField("Enter the source title",text: $tfStitle)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(5))
                    .frame(width: 300)
                
            }
            
            VStack{
                Text("Amount:")
                    .font(.system(size: 22))
                    .bold()
                    .kerning(2)
                
                TextField("Enter the amount",text: $tfSamt)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(5))
                    .frame(width: 300)
                
            }
            
            VStack{
                Text("Summary:")
                    .font(.system(size: 22))
                    .bold()
                    .kerning(2)
                
                TextField("Enter the summary",text: $tfSsummary)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(5))
                    .frame(width: 300)
                
            }
            Spacer()
            
            Button{
                saveSource()
            }label:{
                Text("Save")
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .padding()
                    .frame(maxWidth:300)
                    .foregroundColor(.white)
                    .bold()
                    .background(Color.black.cornerRadius(10))
            }
        }
    
        .navigationTitle("Add New Source")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
    

    
    func saveSource() {
        // Convert tfSamt string to an integer
        if let amount = Int(tfSamt) {
            // If conversion is successful, create InformationModel
            let newSource = InformationModel(title: tfStitle, amount: Double(amount), summary: tfSsummary)
            // Add new source to utility
            ut.addNewUtility(new: newSource)
        } else {
            // Handle conversion failure (e.g., show an error message)
            print("Error: Failed to convert amount to integer")
        }
        
        // Reset text fields
        tfStitle = ""
        tfSamt = ""
        tfSsummary = ""
    }

}


struct AddSourceView_Previews: PreviewProvider {
    static var previews: some View {
        
        let utility1 = Utility(id:1, title:"Income", amount: 0, summary: "", sList:Utility1 , url:urlIncome)
        
        AddSourceView(ut:utility1)
    }
}
