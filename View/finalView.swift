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
        VStack(alignment: .leading) {
            Text(post.title)
                .bold()
                .font(.title)
                Text("Time invested: \(post.hrs)hrs \(post.mins)mins")
            Text("""
.
.
.
.
""")
            Text(post.description)
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
    finalView(vm: PostsViewModel(), post: Post(title: "Title", description: "asdsadsadasdasdasdasdkqwerfnlewrgmklergmkerwgfksdkngljsdgkjnsdgkjsjgbsjgbsdjkbgsdjkbgsdjkbgsdjkb", hrs: 5, mins: 12))
}
