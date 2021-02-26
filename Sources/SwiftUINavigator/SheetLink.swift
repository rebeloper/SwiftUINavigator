//
//  SheetLink.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct SheetLink<Destination: View>: View {
    
    @Binding private var isActive: Bool
    private let destination: () -> Destination
    private let onDismiss: (() -> Void)?
    
    public init(isActive: Binding<Bool>, destination: @escaping () -> Destination, onDismiss: (() -> Void)? = nil) {
        self._isActive = isActive
        self.destination = destination
        self.onDismiss = onDismiss
    }
    
    public var body: some View {
        if onDismiss == nil {
            SheetViewLink(isActive: $isActive) {
                destination()
            }
        } else {
            SheetViewLink(isActive: $isActive) {
                destination()
            } onDismiss: {
                onDismiss!()
            }
        }
    }
}



