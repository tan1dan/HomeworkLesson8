//
//  ThirdViewController.swift
//  HomeworkLesson8
//
//  Created by Иван Знак on 07/11/2023.
//

import UIKit

class ThirdViewController: UIViewController {
    @objc func forwardButtonTapped(){
        guard let vc = UIStoryboard(name: "FourthStoryboard", bundle: nil).instantiateViewController(identifier: "FourthViewController") as? FourthViewController else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        let forwardButton = UIBarButtonItem()
        forwardButton.title = "Forward"
        forwardButton.style = .plain
        forwardButton.target = self
        
        forwardButton.action = #selector(forwardButtonTapped)
        navigationItem.rightBarButtonItem = forwardButton
        navigationItem.title = "Third"
        navigationController?.isNavigationBarHidden = false
        navigationItem.setHidesBackButton(false, animated: true)
    }
    
}
