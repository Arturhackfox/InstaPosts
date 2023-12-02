//
//  ContentView.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var title = " "
    @State var selectedHour = 0
    @State var selectedMins = 0
    @State var mainText = " "
    
    var totalNumberInvested: String {
        let totalMinutes = selectedHour * 60 + selectedMins
        let hours = totalMinutes / 60
        let minutes = totalMinutes % 60
        return "Today you invested: \(hours)hrs\(minutes)mins"
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // title
                Text("Enter new title")
                    .font(.headline)
                TextField("Type new title...", text: $title)
                    .textFieldStyle(.roundedBorder)
                
                // time invested
                Text(totalNumberInvested)
                    .font(.headline)
                
                Picker("hours", selection: $selectedHour) {
                    ForEach(0..<10) { x in
                        Text(x.description)
                    }
                }
                .pickerStyle(.segmented)
                
                Picker("Minutes", selection: $selectedMins) {
                    ForEach(0..<61) { m in
                        Text("\(m) mins")
                    }
                }
                .pickerStyle(.wheel)
                Spacer()
                
                //Button "next"
                
                Button(action: {
                    //Nav link destination
                }, label: {
                    Text("Next")
                        .padding()
                        .frame(width: 130)
                        .foregroundStyle(Color.yellow)
                        .background(Color.yellow.secondary)
                        .clipShape(Capsule())
                        
                })
                
            }
            .navigationTitle("iPost✨")
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
