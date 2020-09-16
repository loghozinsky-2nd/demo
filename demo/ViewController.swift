//
//  ViewController.swift
//  demo
//
//  Created by Aleksander Loghozinsky on 11.09.2020.
//  Copyright © 2020 Aleksander Logozinsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let buttonSecond = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.setTitle("MOR333 BUTTON", for: .normal)
        button.setTitle("FRSB BUTTON", for: .highlighted)
        
        buttonSecond.setTitle("dota 3", for: .normal)
        view.addSubview(buttonSecond)
        buttonSecond.backgroundColor = .blue
        buttonSecond.translatesAutoresizingMaskIntoConstraints = false
        buttonSecond.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        buttonSecond.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        buttonSecond.addTarget(self, action: #selector(onDota3Clicked), for: .touchUpInside)
    }
    
    @IBAction func onButtonTap(_ sender: UIButton) {
        counterLabel.text = String(Int(counterLabel.text!)! + 1)
    }
    
    @objc func onDota3Clicked() {
        let alert = UIAlertController(title: "Congratulation", message: "Dota 3 has been released", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
}

