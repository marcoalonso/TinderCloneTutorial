//
//  CardView.swift
//  TinderClone
//
//  Created by Marco Alonso on 13/03/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image("megan")
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeigth)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
                
            
            UserInfoView()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 10)
                
        }
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
        DragGesture()
            .onChanged(onDragChanged)
            .onEnded(onDragEnded)
        )
        
    }
}

private extension CardView {
    
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <=  abs(SizeConstants.screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}



#Preview {
    CardView()
}
