//
//  ContentView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = PostsViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                LinearGradient(colors: [.cyan.opacity(0.7), .black], startPoint: .top, endPoint: .bottomTrailing)
                ScrollView {
                    firstView()

                }
                .navigationTitle("iPost✨")
            .padding()
            }
            .ignoresSafeArea()
        }
        .environment(\.colorScheme, .dark)
    }
    
}


#Preview {
    ContentView()
}
