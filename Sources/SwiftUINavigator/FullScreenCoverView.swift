//
//  FullScreenCoverView.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct FullScreenCoverView<Destination: View, Label: View>: View {
    
    @Binding private var isActive: Bool
    private let destination: () -> Destination
    private let onDismiss: (() -> Void)?
    private let label: () -> Label
    
    public init(isActive: Binding<Bool>, destination: @escaping () -> Destination, onDismiss: (() -> Void)? = nil, label: @escaping () -> Label) {
        self._isActive = isActive
        self.destination = destination
        self.onDismiss = onDismiss
        self.label = label
    }
    
    public var body: some View {
        Button {
            isActive.toggle()
        } label: {
            label()
        }
        .fullScreenCover(isPresented: $isActive, onDismiss: onDismiss) {
            destination()
        }
    }
}


