//
//  CardView.swift
//  TinderClone
//
//  Created by Marco Alonso on 13/03/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("megan")
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: cardHeigth)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            
            UserInfoView()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 10)
                
        }
        
    }
}

private extension CardView {
    var cardWidth: CGFloat {
       UIScreen.main.bounds.width - 20
   }
   
    var cardHeigth: CGFloat {
       UIScreen.main.bounds.height / 1.45
   }
}

#Preview {
    CardView()
}
