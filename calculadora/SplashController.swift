//
//  SplashController.swift
//  calculadora
//
//  Created by Abdiel Mg on 12/12/22.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.performSegue(withIdentifier: "OpenMenu", sender: nil)
        }

        
    }
    


}
