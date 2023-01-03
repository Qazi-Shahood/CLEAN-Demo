//
//  ChatRepository.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation
import Alamofire

class DefaultPostsRepository: PostsRepository {
    
    func getData(completion: @escaping (Data?) -> Void) {
        let url = Constants.baseURL + Endpoints.Post.rawValue
        AF.request(url).validate().responseData { response in
            completion(response.data)
        }
    }
    
}
