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
    public var newsResult: (([Article]?) -> Void)?
    public var error: ((Error?) -> Void)?
    var cancellables = Set<AnyCancellable>()
    
    public init(){}
    public func getHeadlines(request: APIRequestProtocol) {
        repo.getHeadlines(request: request)
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
                    self?.newsResult?(response.articles)
                    print("Result: \(response)")
                }
            ).store(in: &cancellables)
    }
}
