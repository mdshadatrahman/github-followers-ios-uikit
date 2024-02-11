//
//  FollowerListVC.swift
//  GithubFollowers
//
//  Created by Shadat Vai on 8/1/24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        configureViewController()
        configureCollectionView()
        getFollowers()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: triue)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    
    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { (result) in
            
            switch result {
            case.success(let followers):
                    print("Followers.count = \(followers.count)")
                    print(followers)
                
            case.failure(let error):
                self.presentGFAlertOnMainThread(
                    title: "Bad Stuff happened",
                    message: error.rawValue,
                    buttonTitle: "Ok"
                )
            }
        }
    }
}
