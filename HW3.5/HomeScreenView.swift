//
//  HomeScreenView.swift
//  HW3.5
//
//  Created by Dmitry on 14.06.2021.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView()
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
