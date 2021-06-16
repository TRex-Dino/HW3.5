//
//  ContactsView.swift
//  HW3.5
//
//  Created by Dmitry on 14.06.2021.
//

import SwiftUI

struct ContactsView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List(persons, id: \.name) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
