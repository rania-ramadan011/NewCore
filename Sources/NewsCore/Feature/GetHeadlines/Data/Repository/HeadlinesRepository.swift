//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public class HeadlinesRepository: HeadlinesRepositoryProtocol {
    public let remoteDS: HeadlinesRemoteDSProtocol = HeadlinesRemoteDataSource()
    public func getHeadlines(request: APIRequestProtocol) -> AnyPublisher< HeadlineResponseModel , Error >{
      return  remoteDS.getHeadlines(request: request)
    }
}
