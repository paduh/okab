//
//  Constants.swift
//  Okab
//
//  Created by Perfect Aduh on 27/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import Foundation

typealias Callback = (_ SUCCESS: Bool) -> ()

//API URL

let BASE_URL = "http://127.0.0.1:3005/v1/"
let REGISTER_URL = "\(BASE_URL)account/register"
let LOGIN_URL = "\(BASE_URL)account/login"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unWindToChannel"


//User Defaults

let LOGGED_IN = "logdedIn"
let TOKEN_KEY = "tokenKey"
let EMAIL = "email"

//Headrer

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]






