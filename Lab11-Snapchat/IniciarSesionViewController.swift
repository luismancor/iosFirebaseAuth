//
//  ViewController.swift
//  Lab11-Snapchat
//
//  Created by Juan Mancilla on 7/3/20.
//  Copyright © 2020 Juan Mancilla. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class IniciarSesionViewController: UIViewController {

    
    //luismancor@hotmail.com c12
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presenteo el siguiente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

