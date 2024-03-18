//
//  AddSummaryView.swift
//  Jahnavi's Chat Corner
//
//  Created by sowmya adavelli on 3/17/24.
//



import SwiftUI

struct AddSummaryView: View {
    
    @State var tfStitle: String = ""
    @State var tfSamt: String = ""
    @State var tfSsummary: String = ""
    
    @ObservedObject var ut: Utility
    
    var body: some View {
        VStack(spacing: 30){
            
            VStack{
                Text("Title:")
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
                modifySource()
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
        
        .navigationTitle("Modify source")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
    
    
    
    func modifySource() {
        // Convert tfSamt string to an integer
        if let amount = Int(tfSamt) {
            // If conversion is successful, create InformationModel
            let newSource = InformationModel(title: tfStitle, amount: Double(amount), summary: tfSsummary)
            // Add new source to utility
            ut.updateSource(updatedSource: newSource)
        }
        
    }
    
}



struct AddSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        let utility1 = Utility(id:1, title:"Income", amount: 0, summary: "The income gained by selling food.", sList:Utility1 , url:urlIncome)
        
        AddSummaryView(ut:utility1)
    }
}


