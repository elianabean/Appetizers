//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Eliana Wang on 10/14/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
                
            List(MockData.appetizers) { appetizer in
                   AppetizerListCell(appetizer: appetizer)
                }
                    .navigationTitle("🍟 Appetizers")
                
                //"appetizer in" is like in a for loop. it will iterate thru the MockData.appetizers
            }
            
            
        }
        
    }

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
