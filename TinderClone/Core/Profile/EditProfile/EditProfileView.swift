//
//  EditProfileView.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/05/24.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    let user: User
    @State private var bio = ""
    @State private var ocupation = "Lawyer"
    @State private var showSelectionSheetGenre = false
    @State private var showSelectionSheetOrientation = false
    @State private var selectedOrientation: String?
    @State private var selectedGenre: String?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()
                
                VStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("About Me")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Add your bio", text: $bio, axis: .vertical)
                            .padding()
                            .frame(height: 64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Occupation")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack {
                            Image(systemName: "book")
                            Text("Occupation")
                            
                            Spacer()
                            
                            Text(ocupation)
                                .font(.footnote)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                        
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Gender")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    HStack {
                        Text(selectedGenre ?? "-")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                    }
                    
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                }
                .onTapGesture {
                    showSelectionSheetGenre.toggle()
                }
                .sheet(isPresented: $showSelectionSheetGenre) {
                    GenderSelectionSheet(selectedGender:  $selectedGenre)
                        .presentationDetents([.medium])
                }
                
                
                VStack(alignment: .leading) {
                    Text("Sexual Orientation")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    HStack {
                        Text(selectedOrientation ?? "-")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                    }
                    
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                }
                .onTapGesture {
                    showSelectionSheetOrientation.toggle()
                }
                .sheet(isPresented: $showSelectionSheetOrientation) {
                    OrientationSexualSelectionSheet(selectedOrientation: $selectedOrientation)
                        .presentationDetents([.medium])
                }
                
            }// scroll
            
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
                
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[4])
}
