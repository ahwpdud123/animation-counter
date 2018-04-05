//
//  ViewController.swift
//  animation counter
//
//  Created by D7703_15 on 2018. 4. 5..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    var back = 0
    var isAnimating = false
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = UIImage(named:"frame1.png")
        imageCounter.text = String(counter)
    }
    
    @IBAction func play(_ sender: Any) {
//        myTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        if isAnimating == false {
            isAnimating = true
            myTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            
        } else {
            isAnimating = false
            myTimer.invalidate()
        }
    }
    
    @objc func doAnimation(){
//        if counter == 5 {
//            counter = 1
//        } else {
//            counter = counter + 1
//        }
        if counter == 5 {
            back = 0
        } else if counter == 1{
            back = 1
        }
        if back == 1 {
            counter += 1
        } else if back == 0{
            counter = counter - 1
        }
        myImageView.image = UIImage(named:"frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

