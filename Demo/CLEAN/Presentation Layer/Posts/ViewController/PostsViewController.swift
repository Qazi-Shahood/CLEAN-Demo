//
//  PostsViewController.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation
import UIKit

class PostsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel: PostsViewModel!
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.layer.cornerRadius = 16
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        viewModel.delegate = self
        tableView.register(UINib(nibName: "PostsTableViewCell", bundle: nil), forCellReuseIdentifier: "PostsTableViewCell")
        tableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
}

extension PostsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostsTableViewCell", for: indexPath) as! PostsTableViewCell
        cell.configure(with: viewModel.posts[indexPath.row].id, title: viewModel.posts[indexPath.row].title)
        return cell
    }
    
}

extension PostsViewController: PostsViewModelDelegate {
    
    func reloadData() {
        tableView.reloadData()
    }
    
}
