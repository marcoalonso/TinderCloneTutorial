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
        VStack(spacing: 22.0) {
            ZStack {
                ForEach(viewModel.cardModels) { card in
                    CardView(viewModel: viewModel, model: card)
                }
            }
            
            SwipeActionButtonsView(viewModel: viewModel)
            
        }
    }
}

#Preview {
    CardStackView()
}
