//
//  HomeView.swift
//  ReMind
//
//  Created by Gonzalo Trujillo Vallejo on 16/11/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State private var actionsHistory: [ActionItem] = []
    
    let actions = [
        ActionItem(title: "Cerrar la puerta", icon: "lock", timestamp: Date()),
        ActionItem(title: "Apagar el horno", icon: "flame", timestamp: Date())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Título
                Text("Acciones Completadas")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                // Botones para las acciones comunes
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(actions, id: \.id) { action in
                            ActionButton(action: action) {
                                addActionToHistory(action: action)
                            }
                        }
                    }
                    .padding()
                }
                
                Divider()
                    .padding(.vertical)

                // Historial de acciones completadas
                Text("Historial de Acciones")
                    .font(.headline)
                    .padding(.horizontal)

                ActionHistoryList(actionsHistory: actionsHistory)
                
                Spacer()
            }
            .navigationBarTitle("Home")
        }
    }
    
    // Función para añadir una acción al historial
    func addActionToHistory(action: ActionItem) {
        var updatedAction = action
        updatedAction.timestamp = Date() // Actualizamos el tiempo de la acción
        actionsHistory.insert(updatedAction, at: 0)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
