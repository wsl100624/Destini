//
//  ViewController.swift
//  Destini
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    
    var topButtonPressedTimes = 0
    var bottomButtonPressedTimes = 0
    
    let storyLine = Story()
    
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restart()
    }

    @IBAction func restartPressed(_ sender: UIButton) {
        
        restart()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if topButtonPressedTimes == 0 && bottomButtonPressedTimes == 0 {
            if sender.tag == 1 {
                toStory(3)
                topButtonPressedTimes += 1
            } else {
                toStory(2)
                bottomButtonPressedTimes += 1
            }
        }
        
        else if topButtonPressedTimes == 1 && bottomButtonPressedTimes == 0 || topButtonPressedTimes == 1 && bottomButtonPressedTimes == 1{
            if sender.tag == 1 {
                toStory(6)
            } else {
                toStory(5)
            }
        }
        
        else if topButtonPressedTimes == 0 && bottomButtonPressedTimes == 1 {
            if sender.tag == 1 {
                toStory(3)
                topButtonPressedTimes += 1
            } else {
                toStory(4)
            }
        }
    }
    
    
    func restart() {
        
        toStory(1)
        
        topButtonPressedTimes = 0
        bottomButtonPressedTimes = 0
        
        restartButton.isHidden = true
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
    
    
    func toStory(_ storyNum: Int) {
        storyTextView.text = storyLine.storyArray[storyNum - 1].storyText
        topButton.setTitle(storyLine.storyArray[storyNum - 1].answerAText, for: .normal)
        bottomButton.setTitle(storyLine.storyArray[storyNum - 1].answerBText, for: .normal)
        
        if storyNum == 4 || storyNum == 5 || storyNum == 6 {
            restartButton.isHidden = false
            topButton.isHidden = true
            bottomButton.isHidden = true
        }
        
    }


}

