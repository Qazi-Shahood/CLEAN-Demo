//
//  PostsViewModel.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation

class PostsViewModel {
    
    let getPostsUseCase: GetPostsUseCase = DefaultGetPostsUseCase()
    
    private(set) var posts = [Posts]() {
        didSet {
            delegate?.reloadData()
        }
    }
    
    weak var delegate: PostsViewModelDelegate?
    
    func viewDidLoad() {
        getPostsUseCase.execute { [weak self] posts, error in
            guard posts != nil else {
                print((error as? AppError)?.description ?? error!.localizedDescription)
                return
            }
            self?.posts = posts!
        }
    }
    
}
