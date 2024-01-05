//
//  secondView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct secondView: View {
   
    @ObservedObject var vm: PostsViewModel
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(vm.todayILearnedTextfield)
                .shadow(color: .primary.opacity(0.1), radius: 1)
                .frame(maxWidth: 555, maxHeight: 500)
                .padding(.top, 25)
                .background(Color.cyan)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .multilineTextAlignment(.center)
                
                
            
            Text("What did you learn today ?")
                .shadow(radius: 4)
                .padding(.top, 50)
                .fontDesign(.serif)
                
            TextField("Today I learned..", text: $vm.todayILearnedTextfield)
                .multilineTextAlignment(.center)
                .fontDesign(.monospaced)
            
            
        }
        .padding(25)
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                if let model = vm.currentPostModel {
                    // GO TO THIRD VIEW where i can copy everything clean ✨
                    NavigationLink {
                        finalView(vm: vm, post: model)
                    } label: {
                        Text("Generate")
                    }
                }
            }
        })
    }
}

#Preview {
    secondView(vm: PostsViewModel())
}
