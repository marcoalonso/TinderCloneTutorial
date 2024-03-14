//
//  SizeConstants.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/03/24.
//

import SwiftUI

struct SizeConstants {
    static var screenCutoff: CGFloat {
        UIScreen.main.bounds.width / 2 * 0.95
    }
    
    static var cardWidth: CGFloat {
       UIScreen.main.bounds.width - 20
   }
   
    static var cardHeigth: CGFloat {
       UIScreen.main.bounds.height / 1.45
   }
}
