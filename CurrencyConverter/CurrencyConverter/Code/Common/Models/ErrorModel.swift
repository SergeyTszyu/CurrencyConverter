//
//  ErrorModel.swift
//  CurrencyConverter
//
//  Created by Sergey Tszyu on 31.05.2023.
//

import Foundation

struct ErrorModel: Decodable {
    let code: String?
    let message: String?
}
