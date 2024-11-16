//
//  ActionHistoryList.swift
//  ReMind
//
//  Created by Gonzalo Trujillo Vallejo on 16/11/24.
//

import SwiftUI

struct ActionHistoryList: View {
    var actionsHistory: [ActionItem]
    
    var body: some View {
        List(actionsHistory) { action in
            HStack {
                Image(systemName: action.icon)
                    .frame(width: 30, height: 30)
                    .padding()
                VStack(alignment: .leading) {
                    Text(action.title)
                        .fontWeight(.medium)
                    Text("Realizado en: \(action.timestamp.formatDate())")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ActionHistoryList_Previews: PreviewProvider {
    static var previews: some View {
        ActionHistoryList(actionsHistory: [
            ActionItem(title: "Cerrar la puerta", icon: "lock", timestamp: Date())
        ])
    }
}
