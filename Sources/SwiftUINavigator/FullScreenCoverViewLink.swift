//
//  FullScreenCoverViewLink.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct FullScreenCoverViewLink<Destination: View>: View {
    
    @Binding private var isActive: Bool
    private let destination: () -> Destination
    private let onDismiss: (() -> Void)?
    
    public init(isActive: Binding<Bool>, destination: @escaping () -> Destination, onDismiss: (() -> Void)? = nil) {
        self._isActive = isActive
        self.destination = destination
        self.onDismiss = onDismiss
    }
    
    public var body: some View {
        Button {
            isActive.toggle()
        } label: {
            EmptyView()
        }
        .fullScreenCover(isPresented: $isActive, onDismiss: onDismiss) {
            destination()
        }

    }
}



