//
//  HomeScreenView.swift
//  HW3.5
//
//  Created by Dmitry on 14.06.2021.
//

import SwiftUI

struct HomeScreenView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
