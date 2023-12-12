//
//  ViewController.swift
//  HomeworkLesson8
//
//  Created by Иван Знак on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "First"
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor), name: Notification.Name(notificationName), object: nil)
    }
    
    @IBAction func toSecondViewControllerTapped(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "SecondStoryboard", bundle: nil).instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {return}
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @objc func changeColor(){
        view.backgroundColor = .red
    }
}

