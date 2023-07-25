//
//  WriteViewController.swift
//  EmotionApp
//
//  Created by Andy Lee on 2023/07/25.
//

import UIKit

class WriteViewController: UIViewController {
    
    private var emojiCountList = [Int](
        repeating: 0,
        count: Emotion.allCases.count
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        emojiCountList[sender.tag] += 1
        print("\(Emotion.allCases[sender.tag]): \(emojiCountList[sender.tag])")
    }
    
}
