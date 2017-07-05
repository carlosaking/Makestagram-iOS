//
//  LoginVC.swift
//  Makestagram
//
//  Created by Carlos A. on 7/3/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseDatabase

typealias FIRUser = FirebaseAuth.User

class LoginVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func loginBtnTapped(_ sender: UIButton) {
        
        guard let authUI = FUIAuth.defaultAuthUI() else {
            return
        }
        
        authUI.delegate = self
        
        let authVC = authUI.authViewController()
        present(authVC, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension LoginVC: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
        }
        
        guard let user = user else {
            return
        }
        
        UserService.show(forUID: user.uid) { (user) in
            
            if let user = user {
                
                User.setCurrent(user)
                
                let initialViewController = UIStoryboard.initialViewController(for: .main)
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
                
            } else {
                self.performSegue(withIdentifier: Constants.Segue.toCreateUsername, sender: nil)
            }
            
        }
    }
}
