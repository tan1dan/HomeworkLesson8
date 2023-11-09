//
//  FifthViewController.swift
//  HomeworkLesson8
//
//  Created by Иван Знак on 08/11/2023.
//

import UIKit

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    }
    @IBAction func restartAndSwitch(_ sender: UIButton) {
        guard let nv = navigationController,
              let vc4Index = nv.viewControllers.firstIndex(where: { $0 is FourthViewController }),
              let vc3Index = nv.viewControllers.firstIndex(where: { $0 is ThirdViewController }),
              let vc2Index = nv.viewControllers.firstIndex(where: { $0 is SecondViewController }),
              let vc1Index = nv.viewControllers.firstIndex(where: { $0 is ViewController })
        
        else {return}
        
        for i in 0...(nv.viewControllers.count - 1){
            print(nv.viewControllers[i])
        }
        nv.viewControllers.swapAt(vc1Index, vc2Index)
        nv.viewControllers.swapAt(vc3Index, vc4Index)
        print("2")
        for i in 0...(nv.viewControllers.count - 1){
       
            print(nv.viewControllers[i])
        }
    }
    
}
