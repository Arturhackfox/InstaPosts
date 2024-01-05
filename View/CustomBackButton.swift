//
//  CustomBackButton.swift
//  InstaPost
//
//  Created by Arthur Sh on 05.01.2024.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Button(action: {
                  self.presentationMode.wrappedValue.dismiss()
              }) {
                  Image(systemName: "arrow.left")
                      .foregroundColor(.white)
                      .frame(width: 50, height: 30)
                      .background(Color.cyan.opacity(0.3)) // Set your desired background color here
                      .clipShape(RoundedRectangle(cornerRadius: 7))
              }
    }
}

#Preview {
    CustomBackButton()
}
