//
//  PostsViewModel.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import Foundation

class PostsViewModel: ObservableObject {
    @Published var currentPostModel: Post?
    @Published var textField = ""
    @Published var title = " "
    @Published var selectedHour = 0
    @Published var selectedMins = 0 {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var mainText = " "
    @Published var isSecondView = false
    var finalText: String {
        title + " " + textField + " " + "Time invested today: \(selectedHour)hrs \(selectedMins)mins" + mainText
    }
    
    var totalNumberInvested: String {
        let totalMinutes = selectedHour * 60 + selectedMins
        let hours = totalMinutes / 60
        let minutes = totalMinutes % 60
        return "Today you invested: \(hours)hrs\(minutes)mins"
    }
    
    func updatePostModel(){
        currentPostModel = Post(title: self.title, description: self.mainText, hrs: self.selectedHour, mins: self.selectedMins)
    }
}

