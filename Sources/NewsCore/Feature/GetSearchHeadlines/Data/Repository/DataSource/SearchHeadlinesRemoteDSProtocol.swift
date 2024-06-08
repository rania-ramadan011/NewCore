//
//  File 2.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public protocol SearchHeadlinesRemoteDSProtocol {
    func getSearchHeadlines(request: APIRequestProtocol) -> AnyPublisher< HeadlineResponseModel , Error >
}
