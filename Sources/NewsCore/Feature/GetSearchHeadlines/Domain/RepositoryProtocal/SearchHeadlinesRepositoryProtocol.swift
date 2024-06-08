//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import Combine
import CommonUtilities

public protocol SearchHeadlinesRepositoryProtocol {
      func getSearchHeadlines(request: APIRequestProtocol) -> AnyPublisher< HeadlineResponseModel, Error >
}
