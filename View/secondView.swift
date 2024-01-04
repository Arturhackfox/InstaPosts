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
            
            Text(vm.textField)
                .padding(.top, 25)
                .frame(maxWidth: 555, maxHeight: 500)
                .background(Color.cyan)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 12)
                .multilineTextAlignment(.center)
                
                
            
            Text("What you learned today ?")
                .padding(.top, 50)
                .fontDesign(.serif)
                
            TextField("I've learned...", text: $vm.textField)
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
