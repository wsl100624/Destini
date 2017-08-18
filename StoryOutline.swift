//
//  StoryOutline.swift
//  Destini
//
//  Created by Wang Shilong on 8/11/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

struct StoryOutline {
    
    let storyText : String
    let answerAText : String
    let answerBText: String
    
    init(story: String, answerA: String, answerB: String) {
        storyText = story
        answerAText = answerA
        answerBText = answerB
    }
    
}
