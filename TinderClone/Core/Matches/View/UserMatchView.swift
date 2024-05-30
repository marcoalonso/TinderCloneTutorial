//
//  UserMatchView.swift
//  TinderClone
//
//  Created by Marco Alonso on 30/05/24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120.0) {
                VStack {
                    Image("tinder_logo")
                        .resizable()
                        .frame(width: 100)
                        .frame(height: 100)
                    
                    Text("You and Ilse liked each other.")
                        .foregroundStyle(.white)
                        .font(.title2)
                    
                }
                
                HStack(spacing: 16.0) {
                    Image(MockData.users[1].profileImageURLs[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(.white, lineWidth: 2)
                            .shadow(radius: 4)
                    }
                    
                    Image(MockData.users[1].profileImageURLs[1])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(.white, lineWidth: 2)
                            .shadow(radius: 4)
                    }
                }
                
                VStack(spacing: 16.0) {
                    Button("Send Message") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(Color(.systemPink))
                    .clipShape(Capsule())
                    
                    Button("Keep Swiping") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(Color(.clear))
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 1)
                            .shadow(radius: 4)
                    }

                }
            }
        }
        
    }
}

#Preview {
    UserMatchView(show: .constant(true))
}
