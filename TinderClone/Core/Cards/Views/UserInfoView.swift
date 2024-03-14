//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Marco Alonso on 13/03/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Lizeth")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("30")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Button(action: {
                    print("Debug: show profile here ...")
                }, label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                })
            }
            
            Text("Licenciada | Maestra ")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
