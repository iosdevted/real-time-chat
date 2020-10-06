//
//  RegistrationViewModel.swift
//  real-time-chat
//
//  Created by Ted Hyeong on 06/10/2020.
//

import Foundation

struct RegistrationViewModel: AuthenticationProtocol {
    var email: String?
    var password: String?
    var fullname: String?
    var username: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false &&
               password?.isEmpty == false &&
               fullname?.isEmpty == false &&
               username?.isEmpty == false
    }
}

