//
//  ViewController.swift
//  instagram
//
//  Created by Roman Yang on 2023/7/31.
//
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(IGFeedPostTableViewCell.self,
                           forCellReuseIdentifier: IGFeedPostTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
//        do {
//            try Auth.auth().signOut()
//        }
//        catch {
//            print("Failed to sign out")
//        }
    }
    private func handleNotAuthenticated(){
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen // user can't swipe away
            present(loginVC, animated: false)
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IGFeedPostTableViewCell.identifier, for: indexPath) as!IGFeedPostTableViewCell
        return cell
    }
}

