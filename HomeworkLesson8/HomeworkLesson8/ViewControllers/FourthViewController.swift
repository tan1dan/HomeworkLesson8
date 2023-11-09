//
//  FourthViewController.swift
//  HomeworkLesson8
//
//  Created by Иван Знак on 07/11/2023.
//

import UIKit



class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        let menuItem2 = UIAction(title: "Option 2"){action in
            print("Option 2 selected")
        }
        let menuItem1 = UIAction(title: "Next ViewController"){action in
            guard let vc = UIStoryboard(name: "FifthStoryboard", bundle: nil).instantiateViewController(identifier: "FifthViewController") as? FifthViewController else {return}
            self.navigationController?.pushViewController(vc, animated: true)
        }
        let menuButton = UIButton()
        view.addSubview(menuButton)
        menuButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        menuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        menuButton.layer.borderWidth = 0
        menuButton.layer.cornerRadius = 20
        menuButton.layer.backgroundColor = UIColor.yellow.cgColor
        menuButton.setTitleColor(.black, for: .normal)
        menuButton.setTitle("Menu", for: .normal)
        menuButton.menu = UIMenu(title: "Menu", children: [menuItem1, menuItem2])
        menuButton.showsMenuAsPrimaryAction = true
        
        navigationItem.title = "Fourth"
        
        
    }
    
}

