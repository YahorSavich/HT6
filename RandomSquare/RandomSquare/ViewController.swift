//
//  ViewController.swift
//  RandomSquare
//
//  Created by Виктория Савич on 15.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
        
        func isAvailableToPlace(rect: CGRect) -> Bool {
            let isInSuperView = view.frame.contains(rect)
            var isIntersects = false
            view.subviews.forEach { subview in
                if subview.frame.intersects(rect) {
                    isIntersects = true
                }
            }
            return isInSuperView && !isIntersects
        }
        
        func createRandomColor() -> UIColor {
            
            return .init(red: .random(in: 0...1),
                         green: .random(in: 0...1),
                         blue: .random(in: 0...1),
                         alpha: 1)
        }
        
        func createRandomSquare() -> CGRect {
            let width: Int = .random(in: 20...75)
            let height: Int = .random(in: 15...100)
            let originX: Int = .random(in: 0...Int(view.frame.width))
            let originY: Int = .random(in: 0...Int(view.frame.height))
            return CGRect(x: originX, y: originY, width: width, height: height)
        }
        
    
    @IBAction func actionCreateRandomSquare(_ sender: Any) {
        let randomSquare = createRandomSquare()
        let isAvailable = isAvailableToPlace(rect: randomSquare)
        let color = createRandomColor()
        
        if isAvailable {
            let view = UIView()
            view.frame = randomSquare
            view.backgroundColor = color
            self.view.addSubview(view)
        }
    }
    
        
        
        

}

