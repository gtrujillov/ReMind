//
//  ActionItem.swift
//  ReMind
//
//  Created by Gonzalo Trujillo Vallejo on 16/11/24.
//

import SwiftUI

struct ActionItem: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var timestamp: Date
}
