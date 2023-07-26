//
//  WriteViewController.swift
//  EmotionApp
//
//  Created by Andy Lee on 2023/07/25.
//

import UIKit

class WriteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        let value = UserDefaults.standard.integer(forKey: "\(sender.tag)")
        let result = value + 1
    
        UserDefaults.standard.set(result, forKey: "\(sender.tag)")
    }
}
