//
//  CenterModifier.swift
//  Africa
//
//  Created by Vatana Chhorn on 04/01/2021.
//

import SwiftUI

struct CenterModifer: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer() 
        }
    }
}
