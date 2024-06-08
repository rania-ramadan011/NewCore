//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities

enum Shared {
    static let internetManager: InternetConnectionManager = InternetConnectionManager()
    static let apiManager: NetworkManagerProtocol = APIManager.shared
    static let provider: APIRequestProviderProtocol = APIRequestProvider(internetManager: internetManager)
}
