//
//  finalView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct finalView: View {
    @ObservedObject var vm: PostsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(vm.currentPostModel?.title ?? "")
                .bold()
                .font(.title)
            Text("Time invested: \(vm.currentPostModel?.hrs ?? 0)hrs \(vm.currentPostModel?.mins ?? 0)mins")
            Text("""
.
.
.
.
""")
            Text(vm.currentPostModel?.description ?? "")
                .padding()
            Text("""
.
.
.
.
""")
            Text("#someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags")
        }
        .padding()
        
        Button {
            vm.copyContent()
        } label: {
            Text("Copy")
                .padding()
                .background(Color.orange)
                .foregroundStyle(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

#Preview {
    finalView(vm: PostsViewModel())
}
