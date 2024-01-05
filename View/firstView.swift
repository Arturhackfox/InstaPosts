//
//  firstView.swift
//  InstaPost
//
//  Created by Arthur Sh on 05.01.2024.
//

import SwiftUI

struct firstView: View {
    @ObservedObject var vm = PostsViewModel()
    var body: some View {

            VStack(spacing: 20) {
                    // MARK: Title
                    Text("Enter new title")
                        .font(.headline)
                        .fontDesign(.serif)
                
                // MARK: Title textfield
                    TextField("Type new title...", text: $vm.title)
                    .frame(width: 300)
                    .opacity(1)
                        .fontDesign(.serif)
                        .autocorrectionDisabled(true)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.primary.opacity(0.5), lineWidth: 1)
                                .frame(width: 310, height: 30)
                        )
                    
                    // MARK: Time invested:
                    HStack {
                        Text("Today you invested: ")
                            .font(.subheadline)
                            .fontDesign(.serif)
                            .padding(.top)
                            .padding(.leading, 30)
                        
                        Text(vm.totalNumberInvested)
                            .font(.subheadline)
                            .bold()
                            .fontDesign(.serif)
                            .padding(.top)
                            .frame(width: 89, height: 30)

                    }
                        
                    // MARK: HRS
                    Picker("hours", selection: $vm.selectedHour) {
                        ForEach(0..<10) { x in
                            Text(x.description)
                                .fontDesign(.serif)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    // MARK: MINS
                    Picker("Minutes", selection: $vm.selectedMins) {
                        ForEach(0..<61) { m in
                            Text("\(m) mins")
                                .fontDesign(.serif)
                        }
                    }
                    .pickerStyle(.wheel)
                    Spacer()
                    
                    // MARK: Button to SecondView
                    NavigationLink {
                        secondView(vm: vm)
                    } label: {
                        firstViewButton()
                    }
                }
                .padding(.top, 250)
                .padding(.bottom, 100)
            .frame(maxWidth: .infinity)


    }
}

#Preview {
    firstView()
}
