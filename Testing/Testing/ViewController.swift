//
//  ViewController.swift
//  Testing
//
//  Created by 문현규 on 2020/02/27.
//  Copyright © 2020 Vins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    
    @IBOutlet weak var pricelable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refrash()
    }

    @IBAction func reflash(_ sender: Any) {
        let message = "가격은 \(currentValue) 입니다."
        
        let alert = UIAlertController(title: "TEST", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: {action in self.refrash()})

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refrash(){
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        pricelable.text = "\(currentValue)원 입니다."
    }
    
}

