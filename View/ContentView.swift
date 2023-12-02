//
//  ContentView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = PostsViewModel()
    
//    @State var title = " "
//    @State var selectedHour = 0
//    @State var selectedMins = 0
//    @State var mainText = " "
    

//    var totalNumberInvested: String {
//        let totalMinutes = selectedHour * 60 + selectedMins
//        let hours = totalMinutes / 60
//        let minutes = totalMinutes % 60
//        return "Today you invested: \(hours)hrs\(minutes)mins"
//    }
    
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
                
                //Button "next" to second view
//                NavigationLink {
//                    secondView(vm: vm)
//                } label: {
//                    Text("Next")
//                        .padding()
//                        .frame(width: 130)
//                        .foregroundStyle(Color.yellow)
//                        .background(Color.yellow.secondary)
//                        .clipShape(Capsule())
//                }
//
     
                
                Button {
                    let newPost = Post(title: vm.title, description: "", hrs: vm.selectedHour, mins: vm.selectedMins)
                    vm.currentPostModel = newPost
                    if let model = vm.currentPostModel {
                        print(model.title)
                        print(model.description) // no info now
                        print(model.hrs)
                        print(model.mins)
                    } else {
                        print("nil")
                    }
                } label: {
                    Text("save and display")
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
