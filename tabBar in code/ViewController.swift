//
//  ViewController.swift
//  tabBar in code
//
//  Created by 野澤拓己 on 2020/09/16.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
       
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        // Create and present tab Controller
        
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController:SecondViewController())
        let vc3 = UINavigationController(rootViewController:ThirdViewController())
        let vc4 = UINavigationController(rootViewController:FourthViewController())
        let vc5 = UINavigationController(rootViewController:FifthViewController())
        
        // titleはここで設定すると常時表示される
        vc1.title = "Home"
        vc2.title = "Home"
        vc3.title = "Home"
        vc4.title = "Home"
        vc5.title = "Home"
//
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
//        tabBarVC.setViewControllers([vc1], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[x].badgeValue = "3"
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .formSheet
        present(tabBarVC, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.center = view.center
    }


}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .red
//        title = "Contact"
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
//        title = "Contact"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .purple
//        title = "Contact"
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .green
//        title = "Contact"
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .orange
//        title = "Contact"
    }
}


