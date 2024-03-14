//
//  ImageScrollingOverlay.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/03/24.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    print("Debug: go to previous image")
                    updateImageIndex(incement: false)
                }
            
            Rectangle()
                .onTapGesture {
                    print("Debug: go to next image")
                    updateImageIndex(incement: true)
                }
        }
        .foregroundStyle(.red.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(incement: Bool) {
        if incement {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(1), imageCount: 3)
}
