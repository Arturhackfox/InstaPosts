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
            firstView()
            .navigationTitle("iPost✨")
            .padding()
            
            
            
        }
    }
    
}


#Preview {
    ContentView()
}
