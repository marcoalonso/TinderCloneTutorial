//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/05/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                // header
                CurrentUserProfileHeaderView(user: user)
                
                // account info view
                Section("Account information") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullname)
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                
                //legal
                Section("Legal") {
                    HStack {
                        Text("Terms of service")
                        
                        Spacer()
                        
                        Image(systemName: "arrow.up.forward.app")
                    }
                }

                
                //logout/delete
                Section {
                    Button(action: {
                        print("Debug:  logout here .... ")
                    }, label: {
                        Text("Logout")
                    })
                }
                .foregroundStyle(.red)
                
                Section {
                    Button("Delete account") {
                        print("Debug:  delete account .... ")
                    }
                    .foregroundStyle(.red)
                }

            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
