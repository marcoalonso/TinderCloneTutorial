//
//  OrientationSexualSelectionSheet.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/05/24.
//


import SwiftUI

struct OrientationSexualSelectionSheet: View {
    @Binding var selectedOrientation: String?
    @Environment(\.dismiss) var dismiss
    
    private let options = [
        GenderModel(title: "Heterosexual"),
        GenderModel(title: "Homosexual"),
        GenderModel(title: "Bisexual"),
        GenderModel(title: "Asexual"),
        GenderModel(title: "Poliamoroso"),
        GenderModel(title: "Pornosexual"),
        GenderModel(title: "Antrosexual")
    ]

    var body: some View {
        NavigationView {
            List(selection: $selectedOrientation) {
                ForEach(options, id: \.self) { option in
                    Button {
                        selectedOrientation = option.title
                         dismiss()
                    } label: {
                        Text(option.title)
                            .tint(.black)
                    }

                }
            }
            .navigationBarTitle("Orientación Sexual", displayMode: .inline)
        }
    }
}

#Preview {
    GenderSelectionSheet(selectedGender: .constant("Heterosexual"))
}
