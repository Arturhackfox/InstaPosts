//
//  firstViewButton.swift
//  InstaPost
//
//  Created by Arthur Sh on 05.01.2024.
//

import SwiftUI

struct firstViewButton: View {
    var body: some View {
        Text("Complete")
            .fontDesign(.serif)
            .frame(width: 100, height: 50)
            .foregroundStyle(Color.primary)
            .background(Color.yellow.opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    firstViewButton()
}
