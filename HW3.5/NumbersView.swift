//
//  NumbersView.swift
//  HW3.5
//
//  Created by Dmitry on 14.06.2021.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.name) { person in
                    Section(header: Text(person.fullName).bold()) {
                        CustomTextView(phoneNumber: person.phoneNumber,
                                       imageName: "phone")
                        CustomTextView(phoneNumber: person.email,
                                       imageName: "envelope.open")
                    }
                    .textCase(.none)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
