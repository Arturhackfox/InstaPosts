//
//  PostsViewModel.swift
//  InstaPost
//
//  Created by Arthur Sh on 02.12.2023.
//

import Foundation
import UIKit

class PostsViewModel: ObservableObject {
    @Published var currentPostModel: Post? 
    @Published var todayILearnedTextfield = "" {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var title = "" {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var selectedHour = 0 {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var selectedMins = 0 {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var mainText = "" {
        didSet {
            self.updatePostModel()
        }
    }
    @Published var isSecondView = false
    @Published var whatILearnedArray = [String]() {
        didSet {
            index += 1
        }
    }
    @Published var index = 1
    
    var totalNumberInvested: String {
        let totalMinutes = selectedHour * 60 + selectedMins
        let hours = totalMinutes / 60
        let minutes = totalMinutes % 60
        return "\(hours)hrs\(minutes)mins"
    }

    func updatePostModel(){
        currentPostModel = Post(title: self.title, description: self.todayILearnedTextfield, hrs: self.selectedHour, mins: self.selectedMins)
    }
    func copyContent() {
        let contentToCopy = """
        Title: \(self.title)
        🕰️ Time invested: \(selectedHour)hrs \(selectedMins)mins
        .
        .
        .
        .
        ✅ New knowledge:
        \(whatILearnedArray.joined(separator: "\n"))
        .
        .
        .
        .
        #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags #someHastags
        """

        UIPasteboard.general.string = contentToCopy
    }
}

