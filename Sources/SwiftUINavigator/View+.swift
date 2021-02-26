//
//  View+.swift
//  
//
//  Created by Alex Nagy on 26.02.2021.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
    func toAnyView() -> AnyView {
        return AnyView(self)
    }
}
