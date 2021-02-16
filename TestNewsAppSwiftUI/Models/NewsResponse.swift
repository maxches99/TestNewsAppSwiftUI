//
//  NewsResponse.swift
//  TestNewsAppSwiftUI
//
//  Created by Max Chesnikov on 16.02.2021.
//

import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String
    let source, title: String
    let articleDescription: String?
    let image: String?
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: Article {
        .init(author: "Max Chesnikov",
              url: "https://www.cbssports.com/soccer/news/uefa-champions-league-odds-why-these-three-teams-are-likeliest-to-get-upset-in-round-of-16/",
              source: "CBS Sports",
              title: "UEFA Champions League odds: Why these three teams are likeliest to get upset in round of 16 - CBS Sports",
              articleDescription: "There will be upsets once the knockout stage gets going, and here are three matchups to keep an eye on",
              image: "https://sportshub.cbsistatic.com/i/r/2020/12/09/9b058a73-16d5-463b-846f-d6661979863b/thumbnail/1200x675/b802dbdc8c1d5adba3f0413f99d21a01/karim-benzema-real-madrid.jpg",
              date: Date())
    }
}
