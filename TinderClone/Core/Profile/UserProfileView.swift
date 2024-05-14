//
//  UserProfileView.swift
//  TinderClone
//
//  Created by Marco Alonso on 01/04/24.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.semibold)
                        .foregroundStyle(.red)
                })
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeigth)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay {
                                ImageScrollingOverlay(
                                    currentImageIndex: $currentImageIndex,
                                    imageCount: user.profileImageURLs.count
                                )
                            }
                        
                        CardImageIndicatorView(
                            currentImageIndex: currentImageIndex,
                            imageCount: user.profileImageURLs.count
                        )
                    }
                    
                    VStack(alignment: .leading, spacing: 12.0) {
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text("Some text for bio ...")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12.0) {
                Text("Essentials")
                        .fontWeight(.semibold)
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "person")
                        
                        Text("Woman")
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        
                        Text("Straight")
                        
                        Spacer()
                    }
                    
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "book")
                        
                        Text("Actress")
                        
                        Spacer()
                    }
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[4])
}
