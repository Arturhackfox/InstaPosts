//
//  CustomGenerateButtonView.swift
//  InstaPost
//
//  Created by Arthur Sh on 05.01.2024.
//

import SwiftUI

struct CustomGenerateButtonView: View {
    var vm: PostsViewModel
    
    var body: some View {
        NavigationLink {
            finalView(vm: vm)
        } label: {
            Text("Generate")
                .shadow(radius: 2)
                .fontDesign(.rounded)
                .foregroundColor(.white.opacity(0.8))
                .frame(width: 87, height: 32)
                .background(Color.cyan.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 7))
        }

    }
}

#Preview {
    CustomGenerateButtonView(vm: PostsViewModel())
}
