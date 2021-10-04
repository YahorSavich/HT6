//
//  ViewController.swift
//  MovingCircle
//
//  Created by Виктория Савич on 15.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    let circle = UIButton()
    let customView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.frame = CGRect(x: 0, y: 0, width: 100 , height: 100)
        customView.layer.cornerRadius = customView.frame.width / 2
        view.addSubview(customView)
        
        let circle = UIButton(frame: CGRect(x: view.frame.width, y: view.frame.height, width: 100, height: 100))
        circle.backgroundColor = .random
        circle.frame = CGRect(x: Int(customView.frame.width) / 4,
                              y: Int(customView.frame.height) / 4,
                              width:Int(customView.frame.width) / 2 ,
                              height: Int(customView.frame.height) / 2)
        circle.layer.cornerRadius = circle.frame.width / 2
        customView.addSubview(circle)
        
        let upButton = UIButton(frame: CGRect(x: 170, y: 650, width: 40, height: 40))
        upButton.setImage(UIImage(named: "up"), for: .normal)
        upButton.addTarget(self, action: #selector(actionUp), for: .allTouchEvents)
        self.view.addSubview(upButton)
        
        let downButton = UIButton(frame: CGRect(x: 170, y: 750, width: 40, height: 40))
        downButton.setImage(UIImage(named: "down"), for: .normal)
        downButton.addTarget(self, action: #selector(actionDown), for: .allTouchEvents)
        self.view.addSubview(downButton)
        
        let leftButton = UIButton(frame: CGRect(x: 100, y: 700, width: 40, height: 40))
        leftButton.setImage(UIImage(named: "left"), for: .normal)
        leftButton.addTarget(self, action: #selector(actionLeft), for: .allTouchEvents)
        self.view.addSubview(leftButton)
        
        let rightButton = UIButton(frame: CGRect(x: 240, y: 700, width: 40, height: 40))
        rightButton.setImage(UIImage(named: "right"), for: .normal)
        rightButton.addTarget(self, action: #selector(actionRight), for: .allTouchEvents)
        circle.backgroundColor = .random
        self.view.addSubview(rightButton)
        
    }
    
    @objc func actionCircle(_ sender: Any) {
        customView.frame = CGRect(x: CGFloat(arc4random() % UInt32((view.frame.size.width - 100))), y: CGFloat(arc4random() % UInt32((view.frame.size.height - 100))), width: customView.frame.width, height: customView.frame.height)
        
    }
    
    @objc func actionUp(_ sender: Any) {
        print("Up Button")
        if view.frame.minY < 10 {
            customView.frame = CGRect(x: customView.frame.origin.x, y: customView.frame.origin.y - 10, width: 50, height: 50)
        }

    }
    
    @objc func actionDown(_ sender: Any) {
        print("Down Button")
        if view.frame.maxY > 10 {
            customView.frame = CGRect(x: customView.frame.origin.x, y: customView.frame.origin.y + 10, width: 50, height: 50)
        }
    }
    
    @objc func actionRight(_ sender: Any) {
        print("right Button")
        if view.frame.maxX > 10 {
            customView.frame = CGRect(x: customView.frame.origin.x + 10, y: customView.frame.origin.y, width: customView.frame.width, height: customView.frame.height)
        }
    }
    
    @objc func actionLeft(_ sender: Any) {
        print("left Button")
        if view.frame.minX < 10 {
            customView.frame = CGRect(x: customView.frame.origin.x - 10, y: customView.frame.origin.y, width: customView.frame.width, height: customView.frame.height)
        }
    }
    
    
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}

