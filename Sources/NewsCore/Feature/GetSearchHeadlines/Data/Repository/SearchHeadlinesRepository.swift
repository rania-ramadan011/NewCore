//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public class SearchHeadlinesRepository: SearchHeadlinesRepositoryProtocol {
    public let remoteDS: SearchHeadlinesRemoteDSProtocol = SearchHeadlinesRemoteDataSource()
    public func getSearchHeadlines(request: APIRequestProtocol) -> AnyPublisher< HeadlineResponseModel , Error >{
      return  remoteDS.getSearchHeadlines(request: request)
    }
}
