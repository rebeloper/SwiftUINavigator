//
//  Sheet.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct Sheet<Destination: View, Label: View>: View {
    
    @State private var isPresented = false
    
    private let destination: () -> Destination
    private let onDismiss: (() -> Void)?
    private let label: () -> Label
    
    public init(destination: @escaping () -> Destination, onDismiss: (() -> Void)? = nil, label: @escaping () -> Label) {
        self.destination = destination
        self.onDismiss = onDismiss
        self.label = label
    }
    
    public var body: some View {
        if onDismiss == nil {
            SheetView(isActive: $isPresented) {
                destination()
            } label: {
                label()
            }
        } else {
            SheetView(isActive: $isPresented) {
                destination()
            } onDismiss: {
                onDismiss!()
            } label: {
                label()
            }
        }
    }
}
