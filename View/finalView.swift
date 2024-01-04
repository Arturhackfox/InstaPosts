//
//  finalView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct finalView: View {
    @ObservedObject var vm: PostsViewModel
    var post: Post
    
    var body: some View {
        Text(post.title)
            .bold()
            .font(.title)
    }
}

#Preview {
    finalView(vm: PostsViewModel(), post: Post(title: "ads", description: "asdfkjosdajfiosdfjiosdofisdojf", hrs: 5, mins: 12))
}
