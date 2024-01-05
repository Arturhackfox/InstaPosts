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
        NavigationStack{
            ZStack {
                Color.black
                LinearGradient(colors: [.cyan.opacity(0.7), .black], startPoint: .top, endPoint: .bottomTrailing)
                VStack(spacing: 20){
                    
                    Text(vm.todayILearnedTextfield)
                        .shadow(color: .primary.opacity(0.1), radius: 1)
                        .frame(maxWidth: 555, maxHeight: 500)
                        .padding(.top, 25)
                        .background(Color.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.white)
                    
                    
                    // MARK: What did you learn today
                    Text("What did you learn today ?")
                        .foregroundStyle(Color.white)
                        .shadow(radius: 4)
                        .padding(.top, 50)
                        .fontDesign(.serif)
                    
                    TextField("Today I learned..", text: $vm.todayILearnedTextfield)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                        .fontDesign(.monospaced)
                    
                    
                }
                .padding(25)
                .toolbar(content: {
                    // MARK: Next View Button
                    ToolbarItem(placement: .topBarTrailing) {
                            // MARK: GO TO THIRD VIEW where i can copy everything clean ✨
                            CustomGenerateButtonView(vm: vm)
                        
                    }
                    // MARK: Custom Back Button
                    ToolbarItem(placement: .topBarLeading) {
                            CustomBackButton()
                            .shadow(radius: 1)
                        }
                })
            }
            .environment(\.colorScheme, .dark) // Makes
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

#Preview {
    secondView(vm: PostsViewModel())
}
