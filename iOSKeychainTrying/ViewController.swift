//
//  ViewController.swift
//  iOSKeychainTrying
//
//  Created by MAC on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var authenticateTapped: UIButton!

    @IBOutlet var secret: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func authenticateTapped(_ sender: Any) {
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func adjustForKeyboard {
        
    }

}

