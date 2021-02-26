//
//  SheetLink.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct SheetLink<Destination: View>: View {
    
    @State private var isPresented = false
    
    private let destination: () -> Destination
    private let onDismiss: (() -> Void)?
    
    public init(destination: @escaping () -> Destination, onDismiss: (() -> Void)? = nil) {
        self.destination = destination
        self.onDismiss = onDismiss
    }
    
    public var body: some View {
        if onDismiss == nil {
            SheetViewLink(isActive: $isPresented) {
                destination()
            }
        } else {
            SheetViewLink(isActive: $isPresented) {
                destination()
            } onDismiss: {
                onDismiss!()
            }
        }
    }
}



