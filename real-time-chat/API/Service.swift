//
//  Service.swift
//  real-time-chat
//
//  Created by Ted Hyeong on 12/10/2020.
//

import Firebase

struct Service {
    
    static func fetchUsers(completion: @escaping([User]) -> Void) {
        var users = [User]()
        Firestore.firestore().collection("users").getDocuments { (snapshot, error) in
            snapshot?.documents.forEach({ (document) in
                
                let dictionary = document.data()
                let user = User(dictionary: dictionary)
                users.append(user)
                completion(users)
                
            })
        }
    }
}
