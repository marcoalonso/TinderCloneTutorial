//
//  GenderSelectionSheet.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/05/24.
//

import SwiftUI

struct GenderSelectionSheet: View {
    @Binding var selectedGender: String?
    @Environment(\.dismiss) var dismiss
    
    private let options = [
        GenderModel(title: "Binario"),
        GenderModel(title: "No Binario"),
        GenderModel(title: "Agénero"),
        GenderModel(title: "Bigénero"),
        GenderModel(title: "Pangénero"),
        GenderModel(title: "Trigénero"),
        GenderModel(title: "Intergénero"),
        GenderModel(title: "Transexual"),
        GenderModel(title: "Transexual"),
        GenderModel(title: "Neutrois")
    ]

    var body: some View {
        NavigationView {
            List(selection: $selectedGender) {
                ForEach(options, id: \.self) { option in
                    Button {
                        selectedGender = option.title
                         dismiss()
                    } label: {
                        Text(option.title)
                            .tint(.black)
                    }

                }
            }
            .navigationBarTitle("Genero", displayMode: .inline)
        }
    }
}

#Preview {
    GenderSelectionSheet(selectedGender: .constant("Binario"))
}
