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
            VStack(spacing: 20) {
                // title
                Text("Enter new title")
                    .font(.headline)
                    .fontDesign(.serif)
                TextField("Type new title...", text: $vm.title)
                    .textFieldStyle(.roundedBorder)
                    .fontDesign(.serif)
                    .autocorrectionDisabled(true)
                
                // time invested
                Text(vm.totalNumberInvested)
                    .font(.headline)
                    .fontDesign(.serif)
                    .padding(.top, 30)
                
                Picker("hours", selection: $vm.selectedHour) {
                    ForEach(0..<10) { x in
                        Text(x.description)
                            .fontDesign(.serif)
                    }
                }
                .pickerStyle(.segmented)
                
                Picker("Minutes", selection: $vm.selectedMins) {
                    ForEach(0..<61) { m in
                        Text("\(m) mins")
                            .fontDesign(.serif)
                    }
                }
                .pickerStyle(.wheel)
                Spacer()
                
                NavigationLink {
                    secondView(vm: vm)
                } label: {
                    Text("next view")
                }
            }
            .navigationTitle("iPost✨")
            .padding()
            
            
            
        }
    }
    
}


#Preview {
    ContentView()
}
