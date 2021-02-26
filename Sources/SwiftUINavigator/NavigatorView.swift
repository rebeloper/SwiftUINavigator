//
//  NavigatorView.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct NavigatorView<Content: View>: View {
    
    private let content: () -> Content
    
    public init(content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        NavigationView {
            content().navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
