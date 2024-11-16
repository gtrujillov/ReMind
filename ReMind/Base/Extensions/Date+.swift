//
//  Date+.swift
//  ReMind
//
//  Created by Gonzalo Trujillo Vallejo on 16/11/24.
//

import Foundation

extension Date {
    func formatDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
}
