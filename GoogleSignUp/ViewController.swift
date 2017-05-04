//
//  ViewController.swift
//  GoogleSignUp
//
//  Created by tecnics on 04/05/17.
//  Copyright © 2017 Kamalesh. All rights reserved.
//

import UIKit
import Google
class ViewController: UIViewController  ,GIDSignInDelegate , GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // confirm protocol
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self;
  
    }
    @IBAction func googleLogIn(_ sender: Any) {
       // GIDSignIn.sharedInstance()
        //[[GIDSignIn sharedInstance] setAllowsSignInWithWebView:NO];
      GIDSignIn.sharedInstance().signIn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    func sign(_ signIn: GIDSignIn!, didDisconnectWith user:GIDGoogleUser!,
                withError error: Error!) {
        // Perform any operations when the user disconnects from app here.
        // ...
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        if (error == nil) {
            // Perform any operations on signed in user here.
            let userId = user.userID                  // For client-side use only!
            let idToken = user.authentication.idToken // Safe to send to the server
            let fullName = user.profile.name
            let givenName = user.profile.givenName
            let familyName = user.profile.familyName
            let email = user.profile.email
            
           
            // ...
        } else {
            print("\(error.localizedDescription)")
        }
        GIDSignIn.sharedInstance().signOut()
        
    }
    
    
    
    
    
    
//    // Present a view that prompts the user to sign in with Google
//    func sign(_ signIn: GIDSignIn!,
//              present viewController: UIViewController!) {
//        self.present(viewController, animated: true, completion: nil)
//    }
//    
//    // Dismiss the "Sign in with Google" view
//    func sign(_ signIn: GIDSignIn!,
//              dismiss viewController: UIViewController!) {
//        self.dismiss(animated: true, completion: nil)
//    }


}

