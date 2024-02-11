//
//  ErrorMessage.swift
//  GithubFollowers
//
//  Created by Shadat Vai on 24/1/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidDate = "The data received from the server was invalid. Please try again."
}
