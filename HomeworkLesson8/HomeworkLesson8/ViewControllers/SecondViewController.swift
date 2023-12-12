//
//  SecondViewController.swift
//  HomeworkLesson8
//
//  Created by Иван Знак on 07/11/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationItem.title = "Second"
        navigationController?.isNavigationBarHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor), name: Notification.Name(notificationName), object: nil)
    }
    
    @IBAction func toThirdViewControllerTapped(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "ThirdStoryboard", bundle: nil).instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func changeColor(){
        view.backgroundColor = .red
    }
}
