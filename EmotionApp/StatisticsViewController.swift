//
//  StatisticsViewController.swift
//  EmotionApp
//
//  Created by Andy Lee on 2023/07/25.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet var cheerfulEmotionCountLabel: UILabel!
    @IBOutlet var happyEmotionCountLabel: UILabel!
    @IBOutlet var calmEmotionCountLabel: UILabel!
    @IBOutlet var unhappyEmotionCountLabel: UILabel!
    @IBOutlet var exhaustedEmotionCountLabel: UILabel!
    
    @IBOutlet var emotionCountLabelList: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionCountLabels()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showEmotionCount()
    }
    
    func showEmotionCount() {
        cheerfulEmotionCountLabel.text! = "\(UserDefaults.standard.string(forKey: "cheerful")!)점"
        happyEmotionCountLabel.text! = "\(UserDefaults.standard.string(forKey: "happy")!)점"
        calmEmotionCountLabel.text! = "\(UserDefaults.standard.string(forKey: "calm")!)점"
        unhappyEmotionCountLabel.text! = "\(UserDefaults.standard.string(forKey: "unhappy")!)점"
        exhaustedEmotionCountLabel.text! = "\(UserDefaults.standard.string(forKey: "exhausted")!)점"
    }
    
    func designEmotionCountLabels() {
        for item in emotionCountLabelList {
            item.font = .boldSystemFont(ofSize: 20)
            item.frame.size.width = CGFloat(50.0)
        }
    }
}
