//
//  ContentView.swift
//  Settings
//
//  Created by Prashant Gaikwad on 30/07/20.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size:50))
                            .foregroundColor(.gray)
                        VStack(alignment:.leading) {
                            Button("Sign in to your iPhone") {
                                
                            }
                            .font(.callout)
                            Text("Set up iCloud, the App Store, and more.")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "gear")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("General")) {
                        }
                    }
                    
                    HStack {
                        Image(systemName: "person.crop.circle.badge.exclam")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Accessibility")) {
                        }
                    }
                    
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Privacy")) {
                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "key.fill")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Passwords")) {
                        }
                    }
                }
                
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
