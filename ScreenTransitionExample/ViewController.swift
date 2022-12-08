//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 강민우 on 2022/12/01.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else { return }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil )
    }
}
