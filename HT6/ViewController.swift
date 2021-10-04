//
//  ViewController.swift
//  HT6
//
//  Created by Егор Савич on 13.09.21.
//
//Домашнее задание:
//• Игрушка для котиков - появление разноцветного кружочка, по тапу исчезает и появляется в новом месте (кодом)
// • По нажатию кнопки экран заполняется разноцветными квадратами с фиксированной стороной. Квадраты не пересекаются
// • На экране кружок по центру. Четыре кнопки - вверх, вниз, вправо, влево. При нажатии кнопки кружок перемещается на фиксированное расстояние. За края экрана не выходит, на кнопки не налезает

import UIKit

class ViewController: UIViewController {
    
    
     @IBOutlet weak var containerView: UIView!
     let customView = UIView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customView.backgroundColor = .red
     containerView.addSubview(customView)
        let frameX = view.frame.width * 0.5 - 50
        let frameY = view.frame.height * 0.5 - 50
        customView.frame = CGRect(x: frameX, y: frameY, width: 100, height: 100)
        customView.layer.cornerRadius = 30
        
       
        
//        let customView2 = UIView()
//        customView2.backgroundColor = .blue
//        view.addSubview(customView2)
//        customView2.frame = CGRect(x: 100, y: 150, width: 100, height: 100)
//
//        let customView3 = UIView()
//        customView3.backgroundColor = .green
//        view.addSubview(customView3)
//        customView3.frame = CGRect(x: 100, y: 250, width: 100, height: 100)
//
//        let customView4 = UIView()
//        customView4.backgroundColor = .black
//        view.addSubview(customView4)
//        customView4.frame = CGRect(x: 100, y: 350, width: 100, height: 100)
//
//        let customView5 = UIView()
//        customView5.backgroundColor = .yellow
//        view.addSubview(customView5)
//        customView5.frame = CGRect(x: 100, y: 450, width: 100, height: 100)
        
      
    }
    
    @IBAction func actionScale(_ sender: Any) {
        if customView.frame.width <= view.frame.width {
            customView.frame = CGRect(x: customView.frame.origin.x - 5,
                                  y: customView.frame.origin.y - 5,
                                  width: customView.frame.width + 10,
                                  height: customView.frame.height + 10)
        } else if customView.frame.width <= view.frame.height {
            customView.frame = CGRect(x: customView.frame.origin.x,
                                      y: customView.frame.origin.y - 5,
                                      width: customView.frame.width,
                                      height: customView.frame.height + 10)
        }
    }
    
    @IBAction func actionMove(_ sender: Any) {
        customView.frame = CGRect(x: customView.frame.origin.x - 10, y: customView.frame.origin.y - 10, width: customView.frame.width, height: customView.frame.height)
    }
    
    
    
    
    
    
}

