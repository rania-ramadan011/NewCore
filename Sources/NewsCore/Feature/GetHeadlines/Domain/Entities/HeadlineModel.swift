//
//  File.swift
//  
//
//  Created by Shaimaa Mohammed on 07/06/2024.
//

import Foundation
public struct HeadlineResponseModel: Codable {
    public let status: String
    public let totalResults: Int
    public let articles: [Article]
}

// MARK: - Article
public struct Article: Codable {
    public let source: Source
    public let author: String?
    public let title: String
    public let description: String?
    public let url: String
    public let urlToImage: String?
    public let publishedAt: Date
    public let content: String?
}

// MARK: - Source
public struct Source: Codable {
    public let id: String?
    public let name: String
}

