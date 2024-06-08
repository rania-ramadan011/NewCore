//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities
import Combine

public class GetSearchHeadlinesUseCase {
    public let repo: SearchHeadlinesRepositoryProtocol = SearchHeadlinesRepository()
    public var searchResult: (([Article]?) -> Void)?
    public var error: ((Error?) -> Void)?
    var cancellables = Set<AnyCancellable>()
    
    public init(){}
    public func getSearchHeadlines(request: APIRequestProtocol) {
        repo.getSearchHeadlines(request: request)
            .sink(
                receiveCompletion: { result in
                    switch result {
                    case .finished:
                        break
                    case .failure(let error):
                        self.error?(error)
                        print("Error: \(error)")
                    }
                },
                receiveValue: { [weak self] response in
                    self?.searchResult?(response.articles)
                    print("Result: \(response)")
                }
            ).store(in: &cancellables)
    }
}
