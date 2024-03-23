//
//  CardStackView.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/03/24.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel =  CardsViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(viewModel: viewModel, model: card)
            }
        }
        .onChange(of: viewModel.cardModels) { oldValue, newValue in
            print("Debug: oldValue \(oldValue.count)")
            print("Debug: newValue \(newValue.count)")
        }
    }
}

#Preview {
    CardStackView()
}
