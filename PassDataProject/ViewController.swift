//
//  ViewController.swift
//  PassDataProject
//
//  Created by Volodymyr Boichuk on 02.05.2020.
//  Copyright © 2020 Volodymyr Boichuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func logginTapped( sender: UIButton) {
        perfornSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    //Segue for "go back" button
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else {return}
        self.resultLabel.text = svc.label.text
    }
    
    override func prepare(for sugue: UIStoryboardSegue, sender: Any?) { guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    override func touchesBegan( touches: Set<UITouch>,with event: UIEvent?){ self.view.endEding(true)
      }
}
