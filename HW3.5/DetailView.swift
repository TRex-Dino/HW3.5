//
//  DetailView.swift
//  HW3.5
//
//  Created by Dmitry on 14.06.2021.
//

import SwiftUI

struct DetailView: View {
    private let person: Person
    
    var body: some View {
        Form {
            Section {
                ImagePerson()
                CustomTextView(phoneNumber: person.phoneNumber,
                               imageName: "phone")
                    .font(.title3)
                CustomTextView(phoneNumber: person.email,
                               imageName: "envelope.open")
                    .font(.title3)
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct ImagePerson: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.getContactList().first!)
    }
}
