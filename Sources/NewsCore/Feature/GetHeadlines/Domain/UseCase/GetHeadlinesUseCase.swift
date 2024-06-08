//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public class GetHeadlinesUseCase {
    public let repo: HeadlinesRepositoryProtocol = HeadlinesRepository()
    public init(){}
    public func getHeadlines(request: APIRequestProtocol)-> AnyPublisher<HeadlineResponseModel , Error > {
        return repo.getHeadlines(request: request)
    }
}
