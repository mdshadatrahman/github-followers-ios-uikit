//
//  FollowerListVC.swift
//  GithubFollowers
//
//  Created by Shadat Vai on 8/1/24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(
                    title: "Bad Stuff happened",
                    message: errorMessage!.rawValue,
                    buttonTitle: "Ok"
                )
                return
            }
            
            print("Followers.count = \(followers.count)")
            print(followers)
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
