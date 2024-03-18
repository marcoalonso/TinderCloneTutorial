//
//  CardStackView.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/03/24.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) { card in
            CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
