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
                
                ScrollView {
                    VStack(spacing: 20){

                        // MARK: What did you learn today
                        Text("What did you learn today ?")
                            .foregroundStyle(Color.white)
                            .shadow(radius: 4)
                            .padding(.top, 50)
                            .fontDesign(.serif)
                        // MARK: Today i learned textfield
                        HStack {
                            TextField("Today I learned..", text: $vm.todayILearnedTextfield)
                                .foregroundStyle(Color.white)
                                .multilineTextAlignment(.center)
                                .fontDesign(.monospaced)
                            .frame(width: 200)
                            
                            Button {
                                let newKnowledge = "\(vm.index).\(vm.todayILearnedTextfield)"
                                vm.whatILearnedArray.append(newKnowledge)
                                vm.todayILearnedTextfield = ""
                            } label: {
                                Image(systemName: "plus.circle")
                            }
                        }
                        
                        ForEach(vm.whatILearnedArray, id: \.self) { knowledge in
                                Text("\(knowledge)")
                                .padding([.leading, .trailing], 5)
                                .frame(width: 380, height: 50, alignment: .leading)
                                .frame(maxHeight: 100)
                                    .background(
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.cyan)
                                    )
                                    .bold()
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color.white.opacity(1))
                                    .shadow(radius: 1)
                                    .foregroundStyle(Color.white)
                        }
                        
                        
                    }
                    .padding(.top, 100)
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
