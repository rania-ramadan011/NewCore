//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
import CommonUtilities

public class SearchHeadlinesAPIEndpoint: APIRequestProtocol {
    
    public var baseURL: String
    public var path: String
    public var method: CommonUtilities.HTTPMethod
    public var header: [String : String]?
    public var queryParams: [String : Any]?
    var key: String
    var keyword: String
       public init(key:String,keyword:String) {
        self.keyword = keyword
        self.key = key
        baseURL = "https://newsapi.org"
        path = "/v2/everything"
        method = HTTPMethod.GET
        header = ["Content-type": "application/json"]
        queryParams = ["apiKey":key,"q":keyword]
    }
    
  
}
