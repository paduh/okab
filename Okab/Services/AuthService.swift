//
//  AuthService.swift
//  Okab
//
//  Created by Perfect Aduh on 28/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN)
        }
        set{
            defaults.set(newValue, forKey: LOGGED_IN)
        }
    }
    var authToken: String {
        get {
            return defaults.string(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    var userEmail: String {
        get {
            return defaults.string(forKey: EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping Callback) {
        
        let lowerCaseEmail = email.lowercased()
        
        let body: [ String: Any] = [
            "email": lowerCaseEmail,
            "password": password
            
        ]
        
        Alamofire.request(REGISTER_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            
            if (response.result.error == nil) {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
            
        }
    }
    
    func loginUser(email: String, password: String, completion: @escaping Callback) {
        
        let lowerEmail = email.lowercased()
    
        let body: [String: Any] = [
            "email": lowerEmail,
            "password": password
        ]
        
        Alamofire.request(LOGIN_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data  else { return }
                let json = JSON(data: data)
                
                self.userEmail = json["user"].stringValue
                self.authToken = json["token"].stringValue
                
                self.isLoggedIn = true
                completion(true)
            } else {
                debugPrint(response.result.error)
            }
        }
    }
}
