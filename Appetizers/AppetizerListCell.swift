//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Eliana Wang on 10/16/23.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            //Image taken from https://www.eatingwell.com/gallery/7963439/summer-appetizers-to-eat-for-dinner/
            Image("skewers")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(32)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading) //only padding in the front
        }
    }
    
    struct AppetizerListCell_Previews: PreviewProvider {
        static var previews: some View {
            AppetizerListCell(appetizer: MockData.sampleAppetizer)
        }
    }
}
