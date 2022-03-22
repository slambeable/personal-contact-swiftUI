//
//  ContentView.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactsSectionView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
