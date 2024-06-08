//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public class HeadlinesRemoteDataSource: HeadlinesRemoteDSProtocol{
    public func getHeadlines(request: APIRequestProtocol) -> AnyPublisher< HeadlineResponseModel , Error >{
        Shared.apiManager.perform(apiRequest: request, providerType: Shared.provider, outputType: HeadlineResponseModel.self)
    }
    
    
    
    
    
    
    
    
}
