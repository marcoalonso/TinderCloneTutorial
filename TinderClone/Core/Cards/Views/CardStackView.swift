//
//  CardStackView.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/03/24.
//

import SwiftUI

struct CardStackView: View {
    @EnvironmentObject var matchManager: MatchManager
    @State private var showMatchView = false
    @StateObject var viewModel =  CardsViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 16.0) {
                    ZStack {
                        ForEach(viewModel.cardModels) { card in
                            CardView(viewModel: viewModel, model: card)
                        }
                    }
                    
                    if !viewModel.cardModels.isEmpty {
                        SwipeActionButtonsView(viewModel: viewModel)
                    }
                }
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView {
                    UserMatchView(show: $showMatchView)
                }
            }
            .animation(.easeIn, value: showMatchView)
            .onReceive(matchManager.$matchedUser) { user in
                showMatchView = user != nil
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("tinder_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88)
                }
        }
        }
    }
}

#Preview {
    CardStackView().environmentObject(MatchManager())
}
