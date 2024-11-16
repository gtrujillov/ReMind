//
//  ActionButton.swift
//  ReMind
//
//  Created by Gonzalo Trujillo Vallejo on 16/11/24.
//

import SwiftUI

struct ActionButton: View {
    var action: ActionItem
    var onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack {
                Image(systemName: action.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .padding()
                    .background(Circle().fill(Color.blue))
                Text(action.title)
                    .fontWeight(.medium)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ActionButton(
        action: ActionItem(
            title: "Cerrar la puerta",
            icon: "lock",
            timestamp: Date()
        )) {
            
        }
}
