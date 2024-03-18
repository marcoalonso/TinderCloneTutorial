//
//  CardsViewModel.swift
//  TinderClone
//
//  Created by Marco Alonso on 18/03/24.
//

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
}
