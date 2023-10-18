//
//  ViewController.swift
//  TODO-Manager
//
//  Created by van on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        self.navigationItem.prompt = "Suggestion"
        self.navigationItem.title = "Scene title"
        self.navigationItem.backButtonTitle = "Back"
        
    }
    
    @IBAction func toPreviousScene(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func toRootScene(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    
    }
    
    @IBAction func toGreenScene(_ sender: UIButton) {
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction func toYellowScene(_ sender: UIButton){
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

// MARK:Helping navigation
extension ViewController {
    
    // перебираем все элементы стека
    //self.navigationController?.viewControllers.forEach { viewController in
    // определяем требуемый контроллер
    // SomeViewController – это класс, соответствующий искомому контроллеру \
    // if viewController is SomeViewController {
    // производим возврат к нему
    //self.navigationController?.popToViewController(viewController, animated: true)
    // } }
    // Работа с корневой сценой // изменяем корневую сцену
    //self.navigationController?.viewControllers[0] = someViewController
}
