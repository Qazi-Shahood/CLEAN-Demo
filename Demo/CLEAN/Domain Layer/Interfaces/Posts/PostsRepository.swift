//
//  GetPostsRepository.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation

protocol PostsRepository {
    func getData(completion: @escaping (Data?) -> Void)
}
