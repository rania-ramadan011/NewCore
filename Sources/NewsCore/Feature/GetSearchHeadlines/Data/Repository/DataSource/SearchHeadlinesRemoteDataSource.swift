//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//
import Foundation
import CommonUtilities
import Combine

public class SearchHeadlinesRemoteDataSource: SearchHeadlinesRemoteDSProtocol{
    public func getSearchHeadlines(request: any CommonUtilities.APIRequestProtocol) -> AnyPublisher<HeadlineResponseModel, any Error> {
        Shared.apiManager.perform(apiRequest: request, providerType: Shared.provider, outputType: HeadlineResponseModel.self)
    }
    

    
    
    
    
    
    
    
    
    
}
