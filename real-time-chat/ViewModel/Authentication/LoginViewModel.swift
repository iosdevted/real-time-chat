//
//  LoginViewModel.swift
//  real-time-chat
//
//  Created by Ted Hyeong on 06/10/2020.
//

import Foundation

protocol AuthenticationProtocol {
    var formIsValid: Bool { get }
}

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false &&
               password?.isEmpty == false
    }
}
