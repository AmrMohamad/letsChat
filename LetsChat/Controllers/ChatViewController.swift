//
//  ChatViewController.swift
//  LetsChat
//
//  Created by Amr Mohamad on 10/16/20.
//  Copyright © 2020 Amr Mohamad. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendAction(_ sender: UIButton) {
    }
    @IBAction func logOutAction(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let welcomeScreen = storyboard.instantiateViewController(identifier: "WelcomeViewController") //as! WelcomeViewController
//            welcomeScreen.modalPresentationStyle = .fullScreen
//            welcomeScreen.navigationController?.navigationItem.hidesBackButton = false
//            welcomeScreen.navigationController?.navigationBar.prefersLargeTitles = true
//            self.present(welcomeScreen, animated: true, completion: nil)
            
            
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "WelcomeViewController")
//            vc.modalPresentationStyle = .automatic
//            self.navigationController?.pushViewController(vc, animated: true)
                //self.navigationController?.isNavigationBarHidden = true
//            vc.navigationItem.hidesBackButton = true
        
                
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
