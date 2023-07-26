//
//  StatisticsViewController.swift
//  EmotionApp
//
//  Created by Andy Lee on 2023/07/25.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    @IBOutlet var emotionCountLabelList: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showEmotionCount()
    }
    
    func showEmotionCount() {
        for i in 0..<emotionCountLabelList.count {
            emotionCountLabelList[i].text = "\(UserDefaults.standard.integer(forKey: "\(i)"))"
        }
    }
    
    func designEmotionCountLabels() {
        for item in emotionCountLabelList {
            item.font = .boldSystemFont(ofSize: 20)
            item.frame.size.width = CGFloat(50.0)
        }
    }
}
