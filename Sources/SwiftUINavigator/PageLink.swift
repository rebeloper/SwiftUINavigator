//
//  PageLink.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct PageLink<Destination: View>: View {
    @Binding private var isActive: Bool
    private let destination: () -> Destination
    
    public init(isActive: Binding<Bool>, destination: @escaping () -> Destination) {
        self._isActive = isActive
        self.destination = destination
    }
    
    public var body: some View {
        NavigationLink(destination: destination(), isActive: $isActive) {
            EmptyView()
        }
    }
}
