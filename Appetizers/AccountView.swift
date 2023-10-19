//
//  AccountView.swift
//  Appetizers
//
//  Created by Eliana Wang on 10/14/23.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false;
    @State private var frequentRefills = false;
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $firstName) //$ to bind the variable
                        TextField("Last Name", text: $lastName)
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                        .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
                    
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                    }
                
                
                
            }
            .navigationTitle("🤣 Account")
            
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
