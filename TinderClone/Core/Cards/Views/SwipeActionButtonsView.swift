//
//  SwipeActionButtonsView.swift
//  TinderClone
//
//  Created by Marco Alonso on 26/03/24.
//

import SwiftUI

struct SwipeActionButtonsView: View {
    @ObservedObject var viewModel : CardsViewModel
    
    var body: some View {
        HStack(spacing: 32.0) {
            Button(action: {
                viewModel.buttonSwipeAction = .reject
            }, label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            })
            .frame(width: 48, height: 48)
            
            Button(action: {
                viewModel.buttonSwipeAction = .like
            }, label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            })
            .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonsView(viewModel: CardsViewModel(service: CardService()))
}
