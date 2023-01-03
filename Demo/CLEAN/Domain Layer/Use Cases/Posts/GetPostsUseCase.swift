//
//  GetPostsUseCase.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation

typealias PostResult = (([Posts]?, Error?) -> Void)

protocol GetPostsUseCase {
    func execute(completion: @escaping PostResult)
}

class DefaultGetPostsUseCase: GetPostsUseCase {
    
    private let repository: PostsRepository = DefaultPostsRepository()
    
    func execute(completion: @escaping PostResult) {
        repository.getData { data in
            guard let data = data else {
                completion(nil, AppError.unexpected)
                return
            }
            do {
                let decoder = JSONDecoder()
                let dto = try decoder.decode([Posts].self, from: data)
                completion(dto, nil)
            } catch let err {
                completion(nil, err)
            }
        }
    }
    
}
