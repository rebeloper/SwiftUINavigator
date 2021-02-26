//
//  NavigationBarBackView.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

public struct NavigationBarBackView<Content: View>: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    private let content: () -> Content
    
    public var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            content()
        })
    }
}
