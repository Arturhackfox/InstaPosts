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
        ZStack {
            Color.black
            LinearGradient(colors: [.cyan.opacity(0.7), .black.opacity(0.4)], startPoint: .top, endPoint: .bottomTrailing)
            VStack {
                VStack(alignment: .leading) {
                    // MARK: Title
                    Text(vm.currentPostModel?.title ?? "")
                        .bold()
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white.opacity(1))
                        .shadow(radius: 1)
                    
                    // MARK: Time invested
                        Text("🕰️ Time invested: \(vm.currentPostModel?.hrs ?? 0)hrs \(vm.currentPostModel?.mins ?? 0)mins")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.white.opacity(1))
                            .shadow(radius: 1)
                    
                    // MARK: Separator
                    dotsView()
                        .foregroundStyle(Color.white.opacity(0.8))
                        .shadow(radius: 5)
                    
                    // MARK: Main description text
                    Text("✅ New knowledge: ")
                        .bold()
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white.opacity(1))
                        .shadow(radius: 1)
                    ForEach(vm.whatILearnedArray, id: \.self) { whatLearned in
                        VStack {
                            Text(" \(whatLearned)")
                                .bold()
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.white.opacity(1))
                            .shadow(radius: 1)
                        }
                    }
                    
                    // MARK: Separator
                    dotsView()
                        .foregroundStyle(Color.white.opacity(0.8))
                        .shadow(radius: 5)
                    
                    Text("#someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags")
                        .foregroundStyle(Color.white.opacity(0.7))
                    

                }
                .padding([.leading, .trailing], 7)
                .padding([.bottom, .top], 8)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.cyan)
                        .foregroundStyle(Color.white)
                        .shadow(color: .black.opacity(0.5), radius: 12, x: 0.5, y: 1)
                }
                
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        CustomBackButton()
                    }
            }
                Spacer()
                VStack {
                    Button {
                        vm.copyContent()
                    } label: {
                        Text("Copy")
                            .fontDesign(.serif)
                            .frame(width: 80, height: 50)
                            .foregroundStyle(Color.primary)
                            .background(Color.cyan.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                }
                
            }
            .padding(.top, 150)
            .padding(.bottom, 80)
            .frame(maxWidth: .infinity)
            
            
      
    }
        .ignoresSafeArea()

    }
}

#Preview {
    finalView(vm: PostsViewModel())
}
