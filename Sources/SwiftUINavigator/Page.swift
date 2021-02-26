//
//  Page.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

@available(iOS 14.0, *)
public struct Page<Destination: View, Label: View>: View {
    
    private var destination: () -> Destination
    private var label: () -> Label
    
    public init(destination: @escaping () -> Destination, label: @escaping () -> Label) {
        self.destination = destination
        self.label = label
    }
    
    public var body: some View {
        NavigationLink(destination: destination()) {
            label()
        }
    }
}
