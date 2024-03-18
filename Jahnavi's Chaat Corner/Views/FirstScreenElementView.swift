//
//  FirstScreenElementView.swift
//  Jahnavi's Chat Corner
//
//  Created by Bombothula, Jahnavi on 3/14/24.
//

import SwiftUI

struct FirstScreenElementView: View {
    var ut: Utility
    
    var body: some View {
        VStack {
            AsyncImageView(urlString: ut.urlFirstScreen)
            FirstElementText(ut:ut)
            
            
        }
    }
    
    
    struct FirstElementText: View{
        var ut: Utility
        
        var body: some View{
            HStack{
                Text(ut.title)
                    .bold()
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
                    .kerning(3)
                
                NavigationLink(destination: SourceListView(ut: ut)){
                    Image(systemName: "arrow.right")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
    
    struct AsyncImageView: View{
        var urlString: String
        
        var body: some View{
            AsyncImage(url: URL(string: urlString)){phase in
                switch phase {
                case .empty:
                    ProgressView()
                    
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                    
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
        }
    }
}
struct FirstScreenElementView_Previews: PreviewProvider {
        static var previews: some View {
            
            let utility1 = Utility(id:1, title:"Income", amount: 0, summary: "", sList:Utility1 , url:urlIncome)
            
            FirstScreenElementView(ut:utility1)
        }
    }

